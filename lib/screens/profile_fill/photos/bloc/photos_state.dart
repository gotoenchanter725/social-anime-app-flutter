part of 'photos_bloc.dart';

@immutable
abstract class PhotosState {}

class PhotosInitial extends PhotosState {}

class ErrorState extends PhotosState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends PhotosState {}

class LoadingState extends PhotosState {}

class PhotosSucssesfulState extends PhotosState {}

class PhotosReadyToSendState extends PhotosState {}

class PhotosReorderReadyToSendState extends PhotosState {}
