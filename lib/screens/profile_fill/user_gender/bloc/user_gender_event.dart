part of 'user_gender_bloc.dart';

@immutable
abstract class UserGenderEvent {}

class OnUserGenderChangedEvent extends UserGenderEvent {
  final UserGender userGender;

  OnUserGenderChangedEvent({required this.userGender});
}

class OnUserGenderInitEvent extends UserGenderEvent {
  final int? gender;

  OnUserGenderInitEvent({required this.gender});
}

class NextTappedEvent extends UserGenderEvent {}
