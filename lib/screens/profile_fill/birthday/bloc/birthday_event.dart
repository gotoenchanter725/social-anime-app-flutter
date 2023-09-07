part of 'birthday_bloc.dart';

@immutable
abstract class BirthdayEvent {}

class OnBirthdayInitEvent extends BirthdayEvent {
  final String birthday;

  OnBirthdayInitEvent({required this.birthday});
}

class OnBirthdayChangedEvent extends BirthdayEvent {
  final DateTime birthday;

  OnBirthdayChangedEvent({required this.birthday});
}

class NextTappedEvent extends BirthdayEvent {}
