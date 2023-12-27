import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
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
          showSnackBarError(context, TextConstants.serverError);
        }
      },
      child: const SafeArea(
        child: SpotifyContent(),
      ),
    );
  }

  Widget _buildAddFavoriteMusicListeners() {
    return BlocBuilder<AddFavoriteMusicBloc, MutationState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
            loading: () => const SenpaiLoading(),
            failed: (error, result) {
              showSnackBarError(context, TextConstants.serverError);
              return const SizedBox.shrink();
            },
            succeeded: (data, result) {
              final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }

              List<dynamic> favoriteMusic =
                  response["addFavoriteMusic"]["user"]["favoriteMusic"];

              if (favoriteMusic.isEmpty) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A user without an favorite Music tried to again");
                return const SizedBox.shrink();
              }

              List<UserFavoriteMusicModel> favoriteMusicList = favoriteMusic
                  .map((e) => UserFavoriteMusicModel.fromJson(e))
                  .toList();

              blocProfileFill.add(
                OnFavoriteMusicSaveEvent(favoriteMusicList: favoriteMusicList),
              );
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
    );
  }

  Widget _buildDeleteFavoriteMusicListeners() {
    return BlocBuilder<DeleteFavoriteMusicBloc, MutationState>(
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
              final deleted = response["deleteFavoriteMusic"]["deleted"];
              if (deleted == true) {
                final bloc = BlocProvider.of<SpotifyBloc>(context);
                bloc.add(OnSpotifyFetchArtistsEvent());
                return const SizedBox.shrink();
              } else {
                showSnackBarError(context, TextConstants.serverError);
              }
              return const SizedBox.shrink();
            },
            orElse: () => const SizedBox.shrink());
      },
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
                logIt.error("A successful empty response just got users");
                return const SizedBox.shrink();
              } else {
                List<dynamic> favoriteMusic =
                    result.data!["fetchUser"]["favoriteMusic"];
                // It's necessary to handle the state when the user starts
                // filling out the profile form and doesn't finish it the first time
                if (favoriteMusic.isNotEmpty) {
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
}
