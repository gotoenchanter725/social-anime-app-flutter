part of 'desired_gender_bloc.dart';

@immutable
abstract class DesiredGenderState {}

class DesiredGenderInitial extends DesiredGenderState {}

class ErrorState extends DesiredGenderState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends DesiredGenderState {}

class LoadingState extends DesiredGenderState {}

class DesiredGenderSucssesfulState extends DesiredGenderState {}
