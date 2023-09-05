part of 'profile_fill_bloc.dart';

@immutable
abstract class ProfileFillEvent {}

class OnChangeStepEvent extends ProfileFillEvent {
  final ProfileFillStep step;

  OnChangeStepEvent({required this.step});
}

class OnFirstNameSaveEvent extends ProfileFillEvent {
  final String firstName;

  OnFirstNameSaveEvent({required this.firstName});
}

class OnUserGenderSaveEvent extends ProfileFillEvent {
  final int gender;

  OnUserGenderSaveEvent({required this.gender});
}

class OnDesiredGenderSaveEvent extends ProfileFillEvent {
  final int gender;

  OnDesiredGenderSaveEvent({required this.gender});
}
