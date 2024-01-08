part of 'preview_profile_bloc.dart';

@immutable
abstract class PreviewProfileState {}

class PreviewProfileInitial extends PreviewProfileState {}

class ErrorState extends PreviewProfileState {
  final String message;

  ErrorState({required this.message});
}

class ValidState extends PreviewProfileState {}

class LoadingState extends PreviewProfileState {}

class ValidSpotifyArtistsState extends PreviewProfileState {}

class ValidSpotifyTracksState extends PreviewProfileState {}
