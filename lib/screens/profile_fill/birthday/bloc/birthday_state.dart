part of 'birthday_bloc.dart';

@immutable
abstract class BirthdayState {}

class BirthdayInitial extends BirthdayState {}

class ErrorState extends BirthdayState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends BirthdayState {}

class LoadingState extends BirthdayState {}

class BirthdaySucssesfulState extends BirthdayState {}
