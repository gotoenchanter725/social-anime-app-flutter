import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/spotify/bloc/spotify_bloc.dart';
import 'package:senpai/screens/profile_fill/spotify/widgets/spotify_content.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

class SpotifyPage extends StatelessWidget {
  final List<UserFavoriteMusicModel> favoriteMusicList;

  const SpotifyPage({
    super.key,
    required this.favoriteMusicList,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SpotifyBloc>(
          create: (context) => SpotifyBloc()
            ..add(OnSpotifyInitFavoriteMusicEvent(favoriteMusicList)),
        ),
        BlocProvider(create: (_) => getIt<FetchUserBloc>()),
        BlocProvider(create: (_) => getIt<AddFavoriteMusicBloc>()),
        BlocProvider(create: (_) => getIt<DeleteFavoriteMusicBloc>()),
      ],
      child: Stack(
        children: [
          _buildContent(),
          _buildAddFavoriteMusicListeners(),
          _buildDeleteFavoriteMusicListeners(),
          _buildFetchUserListeners(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return BlocListener<SpotifyBloc, SpotifyState>(
      listener: (context, state) {
        if (state is ErrorSpotifyState) {
          showSnackBarError(context, R.strings.serverError);
        }
      },
      child: const SafeArea(
        child: SpotifyContent(),
      ),
    );
  }

  Widget _buildAddFavoriteMusicListeners() {
    return BlocListener<AddFavoriteMusicBloc, MutationState>(
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
            List<dynamic>? favoriteMusic;
            try {
              favoriteMusic =
                  response["addFavoriteMusic"]["user"]["favoriteMusic"];
              if (favoriteMusic != null && favoriteMusic.isNotEmpty) {
                final blocProfileFill =
                    BlocProvider.of<ProfileFillBloc>(context);
                List<UserFavoriteMusicModel> favoriteMusicList = favoriteMusic
                    .map((e) => UserFavoriteMusicModel.fromJson(e))
                    .toList();

                blocProfileFill.add(
                  OnFavoriteMusicSaveEvent(
                    favoriteMusicList: favoriteMusicList,
                  ),
                );
              } else {
                favoriteMusic = null;
              }
            } catch (e) {
              logIt.error("Error accessing addFavoriteMusic from response: $e");
              favoriteMusic = null;
            }
            if (favoriteMusic == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.error("A user without an favorite Music tried to again");
            }
          },
        );
      },
      child: BlocBuilder<AddFavoriteMusicBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildDeleteFavoriteMusicListeners() {
    return BlocListener<DeleteFavoriteMusicBloc, MutationState>(
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
              model = response["deleteFavoriteMusic"]["deleted"];
              if (model == true) {
                final bloc = BlocProvider.of<SpotifyBloc>(context);
                bloc.add(OnSpotifyFetchArtistsEvent());
              }
            } catch (e) {
              logIt.error(
                  "Error accessing deleteFavoriteMusic or deleted from response: $e");
              model = null;
            }
            if (model == null) {
              showSnackBarError(context, R.strings.serverError);
              logIt.error("A deleteFavoriteMusic with error");
            }
          },
        );
      },
      child: BlocBuilder<DeleteFavoriteMusicBloc, MutationState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        },
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
            List<dynamic>? favoriteMusic;
            try {
              favoriteMusic = response["fetchUser"]["favoriteMusic"];
              // It's necessary to handle the state when the user starts
              // filling out the profile form and doesn't finish it the first time
              if (favoriteMusic != null && favoriteMusic.isNotEmpty) {
                final blocProfileFill =
                    BlocProvider.of<ProfileFillBloc>(context);
                final serviceBloc =
                    BlocProvider.of<DeleteFavoriteMusicBloc>(context);

                List<UserFavoriteMusicModel> music = favoriteMusic
                    .map((e) => UserFavoriteMusicModel.fromJson(e))
                    .toList();
                final musicIds = music.map((track) => track.id).toList();

                serviceBloc.deleteFavoriteMusicList(
                  userId: blocProfileFill.userId,
                  musicIds: musicIds,
                );
              } else {
                final bloc = BlocProvider.of<SpotifyBloc>(context);
                bloc.add(OnSpotifyFetchArtistsEvent());
              }
            } catch (e) {
              logIt.error("Error accessing fetchUser from response: $e");
              favoriteMusic = null;
            }
            if (favoriteMusic == null) {
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
}
