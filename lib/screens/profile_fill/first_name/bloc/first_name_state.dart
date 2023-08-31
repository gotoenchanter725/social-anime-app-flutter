part of 'first_name_bloc.dart';

@immutable
abstract class FirstNameState {}

class FirstNameInitial extends FirstNameState {}

class ContinueButtonEnableChangedState extends FirstNameState {
  final bool isEnabled;

  ContinueButtonEnableChangedState({
    required this.isEnabled,
  });
}

class ErrorState extends FirstNameState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends FirstNameState {}

class LoadingState extends FirstNameState {}

class FirstNameSucssesfulState extends FirstNameState {}
