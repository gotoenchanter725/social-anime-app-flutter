import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/delete_photo/delete_photo_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/reorder_photos/reorder_photos_bloc.dart';
import 'package:senpai/core/profile_fill/blocs/upload_photo/upload_photo_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/profile_fill/photos/upload_photo_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/widgets/edit_profile_tabs.dart';
import 'package:senpai/screens/preview_profile/bloc/preview_profile_bloc.dart'
    as preview;
import 'package:senpai/screens/profile_fill/photos/bloc/photos_bloc.dart';
import 'package:senpai/screens/profile_fill/photos/widgets/progress_upload_photos_widget.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class EditProfilePage extends StatelessWidget {
  final String userID;

  const EditProfilePage({
    super.key,
    required this.userID,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => EditProfileBloc()),
        BlocProvider(create: (_) => getIt<UpdateUserBloc>()),
        BlocProvider(create: (_) => preview.PreviewProfileBloc()),
        BlocProvider(create: (_) {
          return getIt<FetchUserBloc>()..fetchUser(userId: int.parse(userID));
        }),
        //-----upload photo
        BlocProvider<PhotosBloc>(create: (context) => PhotosBloc()),
        BlocProvider(create: (_) => getIt<UploadPhotoBloc>()),
        BlocProvider(create: (_) => getIt<ReorderPhotosBloc>()),
        BlocProvider(create: (_) => getIt<DeletePhotoBloc>()),
        //------
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              const EditProfileTabs(),
              _buildFetchUserListeners(),
              _buildUpdateUserListeners(),
              _buildUploadPhotoListeners(),
              _buildReorderPhotosListeners(),
              _buildPhotosBlocErrorListeners(),
              _buildDeletePhotoListeners()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFetchUserListeners() {
    return BlocBuilder<FetchUserBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: (data, result) {
              if (result.data == null) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A successful empty response just got recorded");
                return const SizedBox.shrink();
              } else {
                final bloc = BlocProvider.of<EditProfileBloc>(context);
                UserProfileModel user =
                    UserProfileModel.fromJson(result.data!["fetchUser"]);
                bloc.add(OnFetchUser(user: user));
                final photosBloc = BlocProvider.of<PhotosBloc>(context);

                photosBloc.add(
                  OnChangeUploadedPhotosFromServerEvent(
                    user.gallery?.photos ?? [],
                  ),
                );
              }
              return const SizedBox.shrink();
            },
            error: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget _buildUpdateUserListeners() {
    return BlocBuilder<UpdateUserBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }

              final user = response["updateUser"]["user"];
              if (user == null) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A user with error");
                return const SizedBox.shrink();
              }
              context.router.pop();
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget _buildUploadPhotoListeners() {
    return BlocConsumer<UploadPhotoBloc, MutationState>(
      listener: (context, state) {
        state.maybeWhen(
          loading: () {
            _uploadingPhotoDialog(context);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              final bloc = BlocProvider.of<PhotosBloc>(context);
              if (bloc.isShowProgressDialog) {
                context.router.pop();
              }
              bloc.add(OnRestartShowPhotosEvent());
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final response = result.data;

              final bloc = BlocProvider.of<PhotosBloc>(context);
              bloc.add(OnChangeUploadedPhotosCountEvent());

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got recorded");
                return const SizedBox.shrink();
              }
              List<dynamic>? photos =
                  response["uploadPhoto"]["user"]["gallery"]["photos"];
              if (photos == null) {
                showSnackBarError(context, TextConstants.noPhotoFoundText);
                logIt.error("A user without photos");
                return const SizedBox.shrink();
              }
              final uploadPhotos =
                  photos.map((e) => UploadPhotoModel.fromJson(e)).toList();
              bloc.add(OnChangeUploadedPhotosFromServerEvent(uploadPhotos));

              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget _buildDeletePhotoListeners() {
    return BlocBuilder<DeletePhotoBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          loading: () => const SenpaiLoading(),
          succeeded: (data, result) {
            final response = result.data;

            final bloc = BlocProvider.of<PhotosBloc>(context);
            bloc.add(OnChangeUploadedPhotosCountEvent());

            if (response == null) {
              // handle this fatal error
              logIt.wtf("A successful empty response just got recorded");
              return const SizedBox.shrink();
            }
            bool deleted = response["deletePhoto"]["deleted"];
            if (deleted == true) {
              List<dynamic>? photos =
                  response["deletePhoto"]["gallery"]["photos"];
              if (photos == null) {
                showSnackBarError(context, TextConstants.noPhotoFoundText);
                logIt.error("A user without photos");
                return const SizedBox.shrink();
              }
              final uploadPhotos =
                  photos.map((e) => UploadPhotoModel.fromJson(e)).toList();
              bloc.add(OnChangeUploadedPhotosFromServerEvent(uploadPhotos));
              return const SizedBox.shrink();
            } else {
              showSnackBarError(context, TextConstants.serverError);
            }
            return const SizedBox.shrink();
          },
          failed: (error, result) {
            showSnackBarError(context, TextConstants.serverError);
            return const SizedBox.shrink();
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildReorderPhotosListeners() {
    return BlocBuilder<ReorderPhotosBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              final bloc = BlocProvider.of<PhotosBloc>(context);
              if (bloc.isShowProgressDialog) {
                context.router.pop();
              }
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final bloc = BlocProvider.of<PhotosBloc>(context);
              bloc.add(OnChangeUploadedPhotosCountEvent());
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got recorded");
                return const SizedBox.shrink();
              }
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
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
