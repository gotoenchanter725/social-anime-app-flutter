part of 'first_name_bloc.dart';

@immutable
abstract class FirstNameEvent {}

class OnFirstNameChangedEvent extends FirstNameEvent {
  final String firstName;

  OnFirstNameChangedEvent({required this.firstName});
}

class NextTappedEvent extends FirstNameEvent {}
