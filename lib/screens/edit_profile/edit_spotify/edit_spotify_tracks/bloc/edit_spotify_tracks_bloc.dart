import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/profile_fill/spotify/enums/spotify_enums.dart';

part 'edit_spotify_tracks_event.dart';
part 'edit_spotify_tracks_state.dart';

class EditSpotifyTracksBloc
    extends Bloc<EditSpotifyTracksEvent, EditSpotifyTracksState> {
  List<UserFavoriteMusicModel> selectedTracksList = [];
  List<UserFavoriteMusicModel> tracksList = [];

  List<UserFavoriteMusicModel> topTracksList = [];
  int maxAnimeCount = 5;

  EditSpotifyTracksBloc() : super(EditSpotifyTracksInitial()) {
    on<OnEditSpotifyTracksInitEvent>((event, emit) {
      emit(LoadingState());
      for (var artist in event.selectedTracksList) {
        if (artist.musicType == MusicType.track.name) {
          selectedTracksList.add(artist);
        }
      }
      tracksList.addAll(selectedTracksList);
      emit(ValidState());
    });

    on<OnTopSpotifyTracksInitEvent>((event, emit) {
      emit(LoadingState());
      topTracksList = [];
      topTracksList.addAll(event.topTracksList);
      emit(ValidState());
    });

    on<OnEditTracksChangedEvent>((event, emit) {
      emit(LoadingState());
      if (selectedTracksList.length >= maxAnimeCount) {
        emit(ErrorState(
          message: R.strings.selectedAnimeError,
          isEnabled: false,
        ));
        if (event.isSelectedTrack) {
          selectedTracksList.removeWhere(
            (song) => song.spotifyId == event.track.spotifyId,
          );
        }
      } else {
        event.isSelectedTrack
            ? selectedTracksList.removeWhere(
                (song) => song.spotifyId == event.track.spotifyId,
              )
            : selectedTracksList.add(event.track);
      }
      emit(ValidState());
    });

    on<OnUpdateFavoriteTracksEvent>((event, emit) {
      emit(LoadingState());
      emit(EditSpotifyTracksAddSucssesfulState());
    });

    on<OnDeleteFavoriteTracksEvent>((event, emit) {
      emit(LoadingState());
      emit(EditSpotifyTracksDeleteSucssesfulState());
    });
  }
}
