import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/l10n/resources.dart';
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
          //TODO: return it after test
          showSnackBarError(
            context,
            state.message,
          ); // R.strings.spotifyServerError);
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
            dynamic user;
            try {
              user = response["addFavoriteMusic"]["user"];
              if (isSpotifyArtists) {
                final artistsBloc =
                    BlocProvider.of<EditSpotifyArtistsBloc>(context);
                artistsBloc.add(OnUpdateFavoriteArtistsEvent());
              } else {
                final tracksBloc =
                    BlocProvider.of<EditSpotifyTracksBloc>(context);
                tracksBloc.add(OnUpdateFavoriteTracksEvent());
              }
            } catch (e) {
              logIt.error("Error accessing addFavoriteMusic from response: $e");
              user = null;
            }
            if (user == null) {
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
                if (isSpotifyArtists) {
                  final artistsBloc =
                      BlocProvider.of<EditSpotifyArtistsBloc>(context);
                  artistsBloc.add(OnDeleteFavoriteArtistsEvent());
                } else {
                  final tracksBloc =
                      BlocProvider.of<EditSpotifyTracksBloc>(context);
                  tracksBloc.add(OnDeleteFavoriteTracksEvent());
                }
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
}
