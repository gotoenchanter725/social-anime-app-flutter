import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/user_profile/mappers/user_spotify_mapper.dart';

import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/bloc/edit_spotify_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_artists/bloc/edit_spotify_artists_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_artists/widgets/edit_spotify_artists_content.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_tracks/bloc/edit_spotify_tracks_bloc.dart';
import 'package:senpai/screens/edit_profile/edit_spotify/edit_spotify_tracks/widgets/edit_spotify_tracks_content.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class EditSpotifyMusicPage extends StatelessWidget {
  final bool isSpotifyArtists;
  final EditProfileBloc editBloc;

  const EditSpotifyMusicPage({
    super.key,
    required this.editBloc,
    this.isSpotifyArtists = true,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: editBloc),
        BlocProvider(create: (_) => getIt<AddFavoriteMusicBloc>()),
        BlocProvider(create: (_) => getIt<DeleteFavoriteMusicBloc>()),
      ],
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: SafeArea(
          child: Stack(
            children: [
              _buildContentMusic(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentMusic() {
    if (isSpotifyArtists) {
      return MultiBlocProvider(
        providers: [
          BlocProvider<EditSpotifyArtistsBloc>(
            create: (context) => EditSpotifyArtistsBloc()
              ..add(OnEditSpotifyArtistsInitEvent(
                selectedArtistsList: editBloc.user.favoriteMusic ?? [],
              )),
          ),
          BlocProvider<EditSpotifyBloc>(
            create: (context) =>
                EditSpotifyBloc()..add(OnSpotifyFetchArtistsEvent()),
          ),
        ],
        child: Stack(
          children: [
            const EditSpotifyArtistsContent(),
            _buildGetTokenLoadingListeners(),
            _buildAddFavoriteMusicListeners(),
            _buildDeleteFavoriteMusicListeners(),
          ],
        ),
      );
    } else {
      return MultiBlocProvider(
        providers: [
          BlocProvider<EditSpotifyTracksBloc>(
            create: (context) => EditSpotifyTracksBloc()
              ..add(OnEditSpotifyTracksInitEvent(
                selectedTracksList: editBloc.user.favoriteMusic ?? [],
              )),
          ),
          BlocProvider<EditSpotifyBloc>(
            create: (context) =>
                EditSpotifyBloc()..add(OnSpotifyFetchTracksEvent()),
          ),
        ],
        child: Stack(
          children: [
            const EditSpotifyTracksContent(),
            _buildGetTokenLoadingListeners(),
            _buildAddFavoriteMusicListeners(),
            _buildDeleteFavoriteMusicListeners(),
          ],
        ),
      );
    }
  }

  Widget _buildGetTokenLoadingListeners() {
    return BlocConsumer<EditSpotifyBloc, EditSpotifyState>(
      listener: (context, state) {
        if (state is SpotifySucssesfulState) {
          final spotifyBloc = BlocProvider.of<EditSpotifyBloc>(context);
          if (isSpotifyArtists) {
            final bloc = BlocProvider.of<EditSpotifyArtistsBloc>(context);
            bloc.add(OnTopSpotifyArtistsInitEvent(
              topArtistsList: spotifyBloc.artistList
                  .map((e) => e.toUserFavoriteArtistModel())
                  .toList(),
            ));
          } else {
            final bloc = BlocProvider.of<EditSpotifyTracksBloc>(context);
            bloc.add(OnTopSpotifyTracksInitEvent(
              topTracksList: spotifyBloc.trackList
                  .map((e) => e.toUserFavoriteTrackModel())
                  .toList(),
            ));
          }
        }
        if (state is ErrorEditSpotifyState) {
          showSnackBarError(context, TextConstants.spotifyServerError);
        }
      },
      builder: (context, state) {
        return state is LoadingEditSpotifyState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
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
              final response = result.data;

              if (response == null) {
                // handle this fatal error
                logIt.wtf("A successful empty response just got set user");
                return const SizedBox.shrink();
              }

              dynamic user = response["addFavoriteMusic"]["user"];

              if (user.isEmpty) {
                showSnackBarError(context, TextConstants.nullUser);
                logIt.error("A user without an music tried to again");
                return const SizedBox.shrink();
              }
              if (isSpotifyArtists) {
                final artistsBloc =
                    BlocProvider.of<EditSpotifyArtistsBloc>(context);
                artistsBloc.add(OnUpdateFavoriteArtistsEvent());
              } else {
                final tracksBloc =
                    BlocProvider.of<EditSpotifyTracksBloc>(context);
                tracksBloc.add(OnUpdateFavoriteTracksEvent());
              }
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
                if (isSpotifyArtists) {
                  final artistsBloc =
                      BlocProvider.of<EditSpotifyArtistsBloc>(context);
                  artistsBloc.add(OnDeleteFavoriteArtistsEvent());
                } else {
                  final tracksBloc =
                      BlocProvider.of<EditSpotifyTracksBloc>(context);
                  tracksBloc.add(OnDeleteFavoriteTracksEvent());
                }

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
}
