part of 'birthday_bloc.dart';

@immutable
abstract class BirthdayEvent {}

class OnBirthdayInitEvent extends BirthdayEvent {
  final DateTime? birthday;

  OnBirthdayInitEvent({this.birthday});
}

class OnBirthdayChangedEvent extends BirthdayEvent {
  final DateTime birthday;

  OnBirthdayChangedEvent({required this.birthday});
}

class NextTappedEvent extends BirthdayEvent {}
