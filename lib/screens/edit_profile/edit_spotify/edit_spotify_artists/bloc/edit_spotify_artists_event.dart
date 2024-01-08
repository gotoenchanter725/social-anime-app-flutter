part of 'edit_spotify_artists_bloc.dart';

@immutable
abstract class EditSpotifyArtistsEvent {}

class OnEditSpotifyArtistsInitEvent extends EditSpotifyArtistsEvent {
  final List<UserFavoriteMusicModel> selectedArtistsList;
  OnEditSpotifyArtistsInitEvent({required this.selectedArtistsList});
}

class OnTopSpotifyArtistsInitEvent extends EditSpotifyArtistsEvent {
  final List<UserFavoriteMusicModel> topArtistsList;
  OnTopSpotifyArtistsInitEvent({required this.topArtistsList});
}

class OnEditArtistsChangedEvent extends EditSpotifyArtistsEvent {
  final UserFavoriteMusicModel artist;
  final bool isSelectedArtist;

  OnEditArtistsChangedEvent({
    required this.artist,
    required this.isSelectedArtist,
  });
}

class OnUpdateFavoriteArtistsEvent extends EditSpotifyArtistsEvent {
  OnUpdateFavoriteArtistsEvent();
}

class OnDeleteFavoriteArtistsEvent extends EditSpotifyArtistsEvent {
  OnDeleteFavoriteArtistsEvent();
}
