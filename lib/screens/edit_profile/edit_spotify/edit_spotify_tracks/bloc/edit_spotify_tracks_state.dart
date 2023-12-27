part of 'edit_spotify_tracks_bloc.dart';

@immutable
abstract class EditSpotifyTracksState {}

class EditSpotifyTracksInitial extends EditSpotifyTracksState {}

class ErrorState extends EditSpotifyTracksState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends EditSpotifyTracksState {}

class LoadingState extends EditSpotifyTracksState {}

class EditSpotifyTracksAddSucssesfulState extends EditSpotifyTracksState {}

class EditSpotifyTracksDeleteSucssesfulState extends EditSpotifyTracksState {}
