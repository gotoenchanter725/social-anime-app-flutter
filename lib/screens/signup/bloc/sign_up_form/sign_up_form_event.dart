part of 'sign_up_form_bloc.dart';

@immutable
abstract class SignUpFormEvent {}

class OnTextChangedEvent extends SignUpFormEvent {
  final PhoneNumber phoneNumber;

  OnTextChangedEvent({required this.phoneNumber});
}

class SignUpTappedEvent extends SignUpFormEvent {}
