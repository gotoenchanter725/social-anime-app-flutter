part of 'verify_photo_bloc.dart';

@immutable
abstract class VerifyPhotoEvent {}

class OnVerifyPhotoInitEvent extends VerifyPhotoEvent {
  final File? photo;

  OnVerifyPhotoInitEvent({this.photo});
}

class OnOpenStartMatchSceenEvent extends VerifyPhotoEvent {}

class OnStartMatchingEvent extends VerifyPhotoEvent {}
