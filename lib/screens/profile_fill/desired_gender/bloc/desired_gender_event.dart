part of 'desired_gender_bloc.dart';

@immutable
abstract class DesiredGenderEvent {}

class OnDesiredGenderChangedEvent extends DesiredGenderEvent {
  final DesiredGender desiredGender;

  OnDesiredGenderChangedEvent({required this.desiredGender});
}

class OnDesiredGenderInitEvent extends DesiredGenderEvent {
  final int? gender;

  OnDesiredGenderInitEvent({required this.gender});
}

class NextTappedEvent extends DesiredGenderEvent {}
