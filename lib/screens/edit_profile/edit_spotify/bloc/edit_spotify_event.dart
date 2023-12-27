part of 'edit_spotify_bloc.dart';

@immutable
abstract class EditSpotifyEvent {}

class OnSpotifyFetchArtistsEvent extends EditSpotifyEvent {
  OnSpotifyFetchArtistsEvent();
}

class OnSpotifyFetchTracksEvent extends EditSpotifyEvent {
  OnSpotifyFetchTracksEvent();
}

class OnSpotifyDisconnectEvent extends EditSpotifyEvent {
  OnSpotifyDisconnectEvent();
}
