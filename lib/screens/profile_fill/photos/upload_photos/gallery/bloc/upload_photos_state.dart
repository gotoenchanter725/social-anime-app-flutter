part of 'upload_photos_bloc.dart';

@immutable
abstract class UploadPhotosState {}

class GalleryInitial extends UploadPhotosState {}

class ErrorState extends UploadPhotosState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends UploadPhotosState {}

class LoadingUploadPhotosState extends UploadPhotosState {}

class ChangeStepSuccessfulState extends UploadPhotosState {}
