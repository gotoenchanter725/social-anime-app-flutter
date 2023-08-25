part of 'sign_up_form_bloc.dart';

@immutable
abstract class SignUpFormEvent {}

class OnTextChangedEvent extends SignUpFormEvent {}

class SignUpTappedEvent extends SignUpFormEvent {}
