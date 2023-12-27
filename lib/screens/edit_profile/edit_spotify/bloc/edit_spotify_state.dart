part of 'edit_spotify_bloc.dart';

@immutable
abstract class EditSpotifyState {}

class SpotifyInitial extends EditSpotifyState {}

class ErrorEditSpotifyState extends EditSpotifyState {
  final String message;

  ErrorEditSpotifyState({required this.message});
}

class LoadingEditSpotifyState extends EditSpotifyState {}

class SpotifySucssesfulState extends EditSpotifyState {}

class SpotifyDisconnectSucssesfulState extends EditSpotifyState {}
