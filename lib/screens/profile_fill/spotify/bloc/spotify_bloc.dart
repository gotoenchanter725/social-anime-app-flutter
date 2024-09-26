import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_auth_usecase.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_fetch_user_info_usecase.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_artist/spotify_artist_model.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_track/spotify_track_model.dart';
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';
import 'package:senpai/models/user_profile/mappers/user_spotify_mapper.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';

part 'spotify_event.dart';
part 'spotify_state.dart';

class SpotifyBloc extends Bloc<SpotifyEvent, SpotifyState> {
  final SpotifyAuthUseCase _spotifyUseCase = getIt<SpotifyAuthUseCase>();
  final SpotifyFetchUserInfoUseCase _spotifyFetchUserInfoUseCase =
      getIt<SpotifyFetchUserInfoUseCase>();
  final TokenStorage _tokenStorage = getIt<TokenStorage<SpotifyAuthModel>>();

  List<UserFavoriteMusicModel> selectedFavoriteMusicList = [];
  List<UserFavoriteMusicModel> favoriteMusicList = [];

  List<SpotifyArtistModel> artistList = [];
  List<SpotifyTrackModel> trackList = [];

  SpotifyBloc() : super(SpotifyInitial()) {
    on<OnSpotifyInitFavoriteMusicEvent>((event, emit) async {
      emit(LoadingSpotifyState());
      selectedFavoriteMusicList = event.favoriteMusicList;
      emit(SpotifyDisconnectSucssesfulState());
    });

    on<OnSpotifyFetchArtistsEvent>((event, emit) async {
      emit(LoadingSpotifyState());
      favoriteMusicList = [];
      final spotifyAuthModel = await _tokenStorage.read();
      String token =
          spotifyAuthModel != null ? await refreshToken() : await getToken();

      if (token.isNotEmpty) {
        try {
          final result =
              await _spotifyFetchUserInfoUseCase.getTopArtists(token);
          result.fold(
            (failure) {
              emit(ErrorSpotifyState(
                message: R.strings.serverError,
              ));
            },
            (data) {
              artistList = data;
              final favoriteArtistsList = artistList
                  .map((track) => track.toUserFavoriteArtistModel())
                  .toList();
              favoriteMusicList.addAll(favoriteArtistsList);
              emit(SpotifyFetchArtistsSucssesfulState());
            },
          );
        } catch (_) {
          emit(ErrorSpotifyState(
            message: R.strings.serverError,
          ));
        }
      } else {
        emit(ErrorSpotifyState(
          message: R.strings.serverError,
        ));
      }
    });

    on<OnSpotifyFetchTracksEvent>((event, emit) async {
      emit(LoadingSpotifyState());
      final spotifyAuthModel = await _tokenStorage.read();
      String token =
          spotifyAuthModel != null ? await refreshToken() : await getToken();

      if (token.isNotEmpty) {
        try {
          final result = await _spotifyFetchUserInfoUseCase.getTopTracks(token);
          result.fold(
            (failure) {
              emit(ErrorSpotifyState(
                message: R.strings.serverError,
              ));
            },
            (data) {
              trackList = data;
              final favoriteTracksList = trackList
                  .map((track) => track.toUserFavoriteTrackModel())
                  .toList();
              favoriteMusicList.addAll(favoriteTracksList);
              emit(SpotifyTracksSucssesfulState());
            },
          );
        } catch (_) {
          emit(ErrorSpotifyState(
            message: R.strings.serverError,
          ));
        }
      } else {
        emit(ErrorSpotifyState(
          message: R.strings.serverError,
        ));
      }
    });
  }

  Future<String> getToken() async {
    return await _spotifyUseCase.fetchToken().then(
          (result) => result.fold((failure) {
            return '';
          }, (token) {
            return token;
          }),
        );
  }

  Future<String> refreshToken() async {
    return await _spotifyUseCase.refreshToken().then(
          (result) => result.fold(
            (failure) {
              return '';
            },
            (token) {
              return token;
            },
          ),
        );
  }
}
