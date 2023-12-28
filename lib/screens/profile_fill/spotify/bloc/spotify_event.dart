part of 'spotify_bloc.dart';

@immutable
abstract class SpotifyEvent {}

class OnSpotifyInitFavoriteMusicEvent extends SpotifyEvent {
  final List<UserFavoriteMusicModel> favoriteMusicList;
  OnSpotifyInitFavoriteMusicEvent(this.favoriteMusicList);
}

class OnSpotifyFetchArtistsEvent extends SpotifyEvent {
  OnSpotifyFetchArtistsEvent();
}

class OnSpotifyFetchTracksEvent extends SpotifyEvent {
  OnSpotifyFetchTracksEvent();
}
