part of 'sign_up_form_bloc.dart';

@immutable
abstract class SignUpFormEvent {}

class OnTextChangedEvent extends SignUpFormEvent {
  final PhoneNumber phoneNumber;

  OnTextChangedEvent({required this.phoneNumber});
}

class SignUpTappedEvent extends SignUpFormEvent {}

class TermsAndConditionsTappedEvent extends SignUpFormEvent {
  final bool isAccepted;

  TermsAndConditionsTappedEvent({required this.isAccepted});
}
