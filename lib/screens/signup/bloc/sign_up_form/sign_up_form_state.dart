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

class ShowErrorState extends SignUpFormState {}

class ErrorState extends SignUpFormState {
  final String message;

  ErrorState({required this.message});
}

class LoadingState extends SignUpFormState {}

class SignUpState extends SignUpFormState {}
