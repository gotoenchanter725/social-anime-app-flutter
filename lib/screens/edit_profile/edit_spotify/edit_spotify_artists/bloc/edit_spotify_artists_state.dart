part of 'edit_spotify_artists_bloc.dart';

@immutable
abstract class EditSpotifyArtistsState {}

class EditSpotifyArtistsInitial extends EditSpotifyArtistsState {}

class ErrorState extends EditSpotifyArtistsState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends EditSpotifyArtistsState {}

class LoadingState extends EditSpotifyArtistsState {}

class EditSpotifyArtistsAddSucssesfulState extends EditSpotifyArtistsState {}

class EditSpotifyArtistsDeleteSucssesfulState extends EditSpotifyArtistsState {}
