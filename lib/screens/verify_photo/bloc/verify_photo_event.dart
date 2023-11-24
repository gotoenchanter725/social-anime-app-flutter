part of 'verify_photo_bloc.dart';

@immutable
abstract class VerifyPhotoEvent {}

class OnVerifyPhotoInitEvent extends VerifyPhotoEvent {
  final File? photo;
  final bool? hasProfileFillBloc;
  final int? userId;

  OnVerifyPhotoInitEvent({
    this.userId,
    this.photo,
    this.hasProfileFillBloc,
  });
}

class OnOpenStartMatchSceenEvent extends VerifyPhotoEvent {}

class OnStartMatchingEvent extends VerifyPhotoEvent {}
