part of 'edit_spotify_tracks_bloc.dart';

@immutable
abstract class EditSpotifyTracksEvent {}

class OnEditSpotifyTracksInitEvent extends EditSpotifyTracksEvent {
  final List<UserFavoriteMusicModel> selectedTracksList;
  OnEditSpotifyTracksInitEvent({required this.selectedTracksList});
}

class OnTopSpotifyTracksInitEvent extends EditSpotifyTracksEvent {
  final List<UserFavoriteMusicModel> topTracksList;
  OnTopSpotifyTracksInitEvent({required this.topTracksList});
}

class OnEditTracksChangedEvent extends EditSpotifyTracksEvent {
  final UserFavoriteMusicModel track;
  final bool isSelectedTrack;

  OnEditTracksChangedEvent({
    required this.track,
    required this.isSelectedTrack,
  });
}

class OnUpdateFavoriteTracksEvent extends EditSpotifyTracksEvent {
  OnUpdateFavoriteTracksEvent();
}

class OnDeleteFavoriteTracksEvent extends EditSpotifyTracksEvent {
  OnDeleteFavoriteTracksEvent();
}
