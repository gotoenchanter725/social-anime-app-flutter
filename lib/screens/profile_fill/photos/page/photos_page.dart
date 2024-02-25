import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/delete_photo/delete_photo_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/reorder_photos/reorder_photos_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/upload_photo/upload_photo_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/photos/upload_photo_model.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';

import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/widgets/photos_content.dart';
import 'package:senpai/screens/profile_fill/photos/widgets/progress_upload_photos_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class PhotosPage extends StatelessWidget {
  const PhotosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PhotosBloc>(
          create: (context) => PhotosBloc(),
        ),
        BlocProvider(
          create: (_) => getIt<UploadPhotoBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<ReorderPhotosBloc>(),
        ),
        BlocProvider(
          create: (_) {
            final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
            return getIt<FetchUserBloc>()
              ..fetchUser(userId: blocProfileFill.userId);
          },
        ),
        BlocProvider(
          create: (_) => getIt<DeletePhotoBloc>(),
        ),
      ],
      child: Stack(
        children: [
          const PhotosContent(),
          _buildUploadPhotoListeners(),
          _buildReorderPhotosListeners(),
          _buildPhotosBlocErrorListeners(),
          _buildFetchUserListeners(),
          _buildDeletePhotoListeners(),
        ],
      ),
    );
  }

  Widget _buildFetchUserListeners() {
    return BlocListener<FetchUserBloc, QueryState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: (result) {},
          error: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          loaded: (data, result) {
            final response = result.data;
            if (response == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["fetchUser"]["gallery"];
              final bloc = BlocProvider.of<PhotosBloc>(context);
              if (model != null) {
                List<dynamic>? photos =
                    response["fetchUser"]["gallery"]["photos"];
                List<UploadPhotoModel> uploadPhotos = [];
                if (photos != null && photos.isNotEmpty) {
                  uploadPhotos =
                      photos.map((e) => UploadPhotoModel.fromJson(e)).toList();
                }
                bloc.add(OnChangeUploadedPhotosFromServerEvent(uploadPhotos));
              }
            } catch (e) {
              logIt.error(
                  "Error accessing fetchUser or gallery from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<FetchUserBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildDeletePhotoListeners() {
    return BlocListener<DeletePhotoBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            final bloc = BlocProvider.of<PhotosBloc>(context);
            bloc.add(OnChangeUploadedPhotosCountEvent());
            if (response == null) {
              logIt.wtf("A successful empty response just got got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["deletePhoto"]["deleted"];
              if (model == true) {
                final blocProfileFill =
                    BlocProvider.of<ProfileFillBloc>(context);
                final bloc = BlocProvider.of<FetchUserBloc>(context);
                bloc.fetchUser(userId: blocProfileFill.userId);
              } else {
                showSnackBarError(context, R.strings.serverError);
              }
            } catch (e) {
              logIt.error("Error accessing deletePhoto from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A user without photos");
            }
          },
        );
      },
      child: BlocBuilder<DeletePhotoBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildUploadPhotoListeners() {
    return BlocListener<UploadPhotoBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            _uploadingPhotoDialog(context);
          },
          failed: (error, result) {
            final bloc = BlocProvider.of<PhotosBloc>(context);
            if (bloc.isShowProgressDialog) {
              context.router.pop();
            }
            bloc.add(OnRestartShowPhotosEvent());
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            final bloc = BlocProvider.of<PhotosBloc>(context);
            bloc.add(OnChangeUploadedPhotosCountEvent());

            if (response == null) {
              logIt.wtf("A successful empty response just got got recorded");
              return;
            }
            List<dynamic>? photos;
            try {
              final bloc = BlocProvider.of<PhotosBloc>(context);
              bloc.add(OnChangeUploadedPhotosCountEvent());
              photos =
                  response["uploadPhoto"]["user"]["gallery"]["photos"] ?? [];
              if (photos == null) {
                showSnackBarError(context, R.strings.nullUser);
                logIt.error("A user without photos");
                return;
              }
              final uploadPhotos =
                  photos.map((e) => UploadPhotoModel.fromJson(e)).toList();
              bloc.add(OnChangeUploadedPhotosFromServerEvent(uploadPhotos));
            } catch (e) {
              logIt.error("Error accessing uploadPhoto from response: $e");
              photos = null;
            }
            if (photos == null) {
              showSnackBarError(context, R.strings.noPhotoFoundText);
              logIt.error("A user without photos");
            }
          },
        );
      },
      child: BlocBuilder<UploadPhotoBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildReorderPhotosListeners() {
    return BlocListener<ReorderPhotosBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            final bloc = BlocProvider.of<PhotosBloc>(context);
            if (bloc.isShowProgressDialog) {
              context.router.pop();
            }
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;

            if (response == null) {
              logIt.wtf("A successful empty response just got got recorded");
              return;
            }
            dynamic model;
            try {
              model = response["reorderPhotos"];
              final bloc = BlocProvider.of<PhotosBloc>(context);
              bloc.add(OnChangeUploadedPhotosCountEvent());
            } catch (e) {
              logIt.error("Error accessing ReorderPhotos from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.noPhotoFoundText);
              logIt.error("A user without photos");
            }
          },
        );
      },
      child: BlocBuilder<ReorderPhotosBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildPhotosBlocErrorListeners() {
    return BlocListener<PhotosBloc, PhotosState>(
      listenWhen: (_, currState) => currState is ErrorState,
      listener: (context, state) {
        if (state is ErrorState) {
          state.isEnabled ? showSnackBarError(context, state.message) : null;
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void _uploadingPhotoDialog(BuildContext context) {
    final bloc = BlocProvider.of<PhotosBloc>(context);
    if (bloc.isShowProgressDialog == false) {
      bloc.add(OnChangeShowProgressDialogEvent(isShowDialog: true));
      showDialog<void>(
        context: context,
        builder: (BuildContext context) => Dialog(
          backgroundColor: $constants.palette.appBackground,
          surfaceTintColor: $constants.palette.appBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              $constants.corners.sm,
            ),
          ),
          alignment: Alignment.topCenter,
          insetPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: $constants.insets.offset,
          ),
          child: BlocProvider.value(
            value: bloc,
            child: const ProgressUploadPhotosWidget(),
          ),
        ),
      ).then((value) {
        bloc.add(OnChangeShowProgressDialogEvent(isShowDialog: false));
      });
    }
  }
}
