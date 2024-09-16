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

part 'edit_spotify_event.dart';
part 'edit_spotify_state.dart';

class EditSpotifyBloc extends Bloc<EditSpotifyEvent, EditSpotifyState> {
  final SpotifyAuthUseCase _spotifyUseCase = getIt<SpotifyAuthUseCase>();
  final SpotifyFetchUserInfoUseCase _spotifyFetchUserInfoUseCase =
      getIt<SpotifyFetchUserInfoUseCase>();
  final TokenStorage _tokenStorage = getIt<TokenStorage<SpotifyAuthModel>>();

  List<SpotifyArtistModel> artistList = [];
  List<SpotifyTrackModel> trackList = [];

  bool isShowDisconnectSpotify = true;

  EditSpotifyBloc() : super(SpotifyInitial()) {
    on<OnSpotifyFetchArtistsEvent>((event, emit) async {
      emit(LoadingEditSpotifyState());
      await _tokenStorage.delete();

      final spotifyAuthModel = await _tokenStorage.read();

      String token =
          spotifyAuthModel != null ? await refreshToken() : await getToken();

      if (token.isNotEmpty) {
        try {
          final result = await _spotifyFetchUserInfoUseCase.getTopArtists(
            token,
          );
          result.fold(
            (failure) {
              isShowDisconnectSpotify = false;
              emit(ErrorEditSpotifyState(
                //TODO: return it after test  after test
                message: '$failure', //R.strings.serverError,
              ));
            },
            (data) {
              artistList.addAll(data);
              emit(SpotifySucssesfulState());
            },
          );
        } catch (error) {
          //TODO: return it after test
          emit(ErrorEditSpotifyState(
            message: 'catch $error', //R.strings.serverError,
          ));
        }
      } else {
        //TODO: return it after test
        emit(ErrorEditSpotifyState(
          message: 'hasToken = false', // R.strings.serverError,
        ));
      }
    });

    on<OnSpotifyFetchTracksEvent>((event, emit) async {
      emit(LoadingEditSpotifyState());
      await _tokenStorage.delete();

      final spotifyAuthModel = await _tokenStorage.read();
      String token =
          spotifyAuthModel != null ? await refreshToken() : await getToken();

      if (token.isNotEmpty) {
        try {
          // final spotifyAuthModel = await _tokenStorage.read();
          // // if (spotifyAuthModel != null) {
          // //   await refreshToken();
          // // } else {
          // //   await getToken();
          // // }
          final result = await _spotifyFetchUserInfoUseCase.getTopTracks();
          result.fold(
            (failure) {
              isShowDisconnectSpotify = false;
              emit(ErrorEditSpotifyState(
                //TODO: return it after test
                message: '$failure', //R.strings.serverError,
              ));
            },
            (data) {
              trackList = data;
              emit(SpotifySucssesfulState());
            },
          );
        } catch (error) {
          //TODO: return it after test
          emit(ErrorEditSpotifyState(
            message: 'catch $error', //R.strings.serverError,
          ));
        }
      } else {
        //TODO: return it after test
        emit(ErrorEditSpotifyState(
          message: 'hasToken = false', // R.strings.serverError,
        ));
      }
    });

    on<OnSpotifyDisconnectEvent>((event, emit) async {
      emit(LoadingEditSpotifyState());
      await _tokenStorage.delete();
      emit(SpotifyDisconnectSucssesfulState());
    });
  }

  Future<String> getToken() async {
    return await _spotifyUseCase.fetchToken().then(
          (result) => result.fold((failure) {
            return '';
          }, (token) {
            print('------------- spotifyToken $token');

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
              print('------------- spotifyRefreshToken $token');

              return token;
            },
          ),
        );
  }
}
