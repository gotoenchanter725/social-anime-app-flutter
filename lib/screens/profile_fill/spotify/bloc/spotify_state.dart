part of 'spotify_bloc.dart';

@immutable
abstract class SpotifyState {}

class SpotifyInitial extends SpotifyState {}

class ErrorSpotifyState extends SpotifyState {
  final String message;

  ErrorSpotifyState({required this.message});
}

class LoadingSpotifyState extends SpotifyState {}

class SpotifyDisconnectSucssesfulState extends SpotifyState {}

class SpotifyFetchArtistsSucssesfulState extends SpotifyState {}

class SpotifyTracksSucssesfulState extends SpotifyState {}
