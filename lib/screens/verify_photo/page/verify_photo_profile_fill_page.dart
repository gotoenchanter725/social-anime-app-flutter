import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart';
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart';
import 'package:senpai/core/user/blocs/verify_photo_user/verify_photo_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';

import 'package:senpai/screens/verify_photo/widgets/verify_photo_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class VerifyPhotoProfileFillPage extends StatelessWidget {
  const VerifyPhotoProfileFillPage({super.key, this.photo});

  final File? photo;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VerifyPhotoBloc>(
          create: (context) => VerifyPhotoBloc()
            ..add(OnVerifyPhotoInitEvent(
              userId: BlocProvider.of<ProfileFillBloc>(context).userId,
              photo: photo,
              hasProfileFillBloc: true,
            )),
        ),
        BlocProvider(
          create: (_) => getIt<VerifyPhotoUserBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<UpdateUserBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<AddFavoriteAnimeBloc>(),
        ),
      ],
      child: Stack(
        children: [
          const VerifyPhotoContent(),
          _buildVerifyPhotoUserListeners(),
          _buildUpdateUserListeners(),
          _buildAddAnimeListListeners(),
        ],
      ),
    );
  }

  Widget _buildVerifyPhotoUserListeners() {
    return BlocListener<VerifyPhotoUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["submitVerifyRequest"]["user"];
              final bloc = BlocProvider.of<VerifyPhotoBloc>(context);
              bloc.add(OnOpenStartMatchSceenEvent());
            } catch (e) {
              logIt.error(
                  "Error accessing submitVerifyRequest or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<VerifyPhotoUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildUpdateUserListeners() {
    return BlocListener<UpdateUserBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            dynamic model;
            try {
              model = response["updateUser"]["user"];

              WidgetsBinding.instance.addPostFrameCallback((_) async {
                final storage = getIt<TokenStorage<AuthModel>>();
                await storage.read().then((authModel) {
                  if (authModel != null) {
                    storage.write(
                      AuthModel(
                        token: authModel.token,
                        user: authModel.user,
                        isProfileFilled: true,
                      ),
                    );
                    context.router.replaceAll([HomeRoute()]);
                  }
                });
              });
            } catch (e) {
              logIt.error(
                  "Error accessing updateUser or user from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user with error");
            }
          },
        );
      },
      child: BlocBuilder<UpdateUserBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildAddAnimeListListeners() {
    return BlocListener<AddFavoriteAnimeBloc, MutationState>(
      listener: (context, state) {
        state.whenOrNull(
          failed: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          succeeded: (data, result) {
            final response = result.data;
            if (response == null) {
              logIt.wtf("A successful empty response just got recorded");
              return;
            }
            List<dynamic>? animes;
            try {
              animes = response["addFavoriteAnime"]["user"]["animes"] ?? [];
              if (animes!.isEmpty) {
                showSnackBarError(context, R.strings.serverError);
                logIt.error("A user without an animes tried to again");
              }
              final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
              final serverBloc = BlocProvider.of<UpdateUserBloc>(context);
              serverBloc.updateUserInfo(user: blocProfileFill.user);
            } catch (e) {
              logIt.error("Error accessing AddFavoriteAnime from response: $e");
              animes = null;
            }
            if (animes == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A user without an animes tried to again");
            }
          },
        );
      },
      child: BlocBuilder<AddFavoriteAnimeBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
