part of 'camera_bloc.dart';

@immutable
abstract class CameraEvent {}

class OnCameraInitEvent extends CameraEvent {
  final File? photo;

  OnCameraInitEvent({this.photo});
}

class OnInitCameraEvent extends CameraEvent {}

class OnInitRotateCameraEvent extends CameraEvent {}

class OnTakePhotoEvent extends CameraEvent {}

class OnChangeLightningEvent extends CameraEvent {}

class OnChangeRotateEvent extends CameraEvent {}
