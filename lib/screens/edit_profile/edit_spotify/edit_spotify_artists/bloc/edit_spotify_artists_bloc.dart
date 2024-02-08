import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';
import 'package:senpai/screens/profile_fill/spotify/enums/spotify_enums.dart';

part 'edit_spotify_artists_event.dart';
part 'edit_spotify_artists_state.dart';

class EditSpotifyArtistsBloc
    extends Bloc<EditSpotifyArtistsEvent, EditSpotifyArtistsState> {
  List<UserFavoriteMusicModel> selectedArtistsList = [];
  List<UserFavoriteMusicModel> artistsList = [];
  List<UserFavoriteMusicModel> topArtistsList = [];

  int maxAnimeCount = 5;

  EditSpotifyArtistsBloc() : super(EditSpotifyArtistsInitial()) {
    on<OnEditSpotifyArtistsInitEvent>((event, emit) {
      emit(LoadingState());
      for (var artist in event.selectedArtistsList) {
        if (artist.musicType == MusicType.artist.name) {
          selectedArtistsList.add(artist);
        }
      }
      artistsList.addAll(selectedArtistsList);
      emit(ValidState());
    });

    on<OnTopSpotifyArtistsInitEvent>((event, emit) {
      emit(LoadingState());
      topArtistsList = [];
      topArtistsList.addAll(event.topArtistsList);
      emit(ValidState());
    });

    on<OnEditArtistsChangedEvent>((event, emit) {
      emit(LoadingState());
      if (selectedArtistsList.length >= maxAnimeCount) {
        emit(ErrorState(
          message: R.strings.selectedAnimeError,
          isEnabled: false,
        ));
        if (event.isSelectedArtist) {
          selectedArtistsList.removeWhere(
            (artist) => artist.spotifyId == event.artist.spotifyId,
          );
        }
      } else {
        event.isSelectedArtist
            ? selectedArtistsList.removeWhere(
                (artist) => artist.spotifyId == event.artist.spotifyId,
              )
            : selectedArtistsList.add(event.artist);
      }
      emit(ValidState());
    });

    on<OnUpdateFavoriteArtistsEvent>((event, emit) {
      emit(LoadingState());
      emit(EditSpotifyArtistsAddSucssesfulState());
    });

    on<OnDeleteFavoriteArtistsEvent>((event, emit) {
      emit(LoadingState());
      emit(EditSpotifyArtistsDeleteSucssesfulState());
    });
  }
}
