part of 'sign_up_form_bloc.dart';

@immutable
abstract class SignUpFormState {}

class SignupInitial extends SignUpFormState {}

class SignUpButtonEnableChangedState extends SignUpFormState {
  final bool isEnabled;

  SignUpButtonEnableChangedState({
    required this.isEnabled,
  });
}

class ErrorState extends SignUpFormState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends SignUpFormState {}

class LoadingState extends SignUpFormState {}

class SignUpState extends SignUpFormState {}
