part of 'verify_photo_bloc.dart';

@immutable
abstract class VerifyPhotoState {}

class VerifyPhotoInitial extends VerifyPhotoState {}

class ErrorState extends VerifyPhotoState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends VerifyPhotoState {}

class LoadingState extends VerifyPhotoState {}

class VerifyPhotoSucssesfulState extends VerifyPhotoState {}
