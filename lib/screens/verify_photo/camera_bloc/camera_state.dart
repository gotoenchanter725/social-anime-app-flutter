part of 'camera_bloc.dart';

@immutable
abstract class CameraState {}

class CameraInitial extends CameraState {}

class ErrorState extends CameraState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends CameraState {}

class LoadingState extends CameraState {}

class CameraSucssesfulState extends CameraState {}
