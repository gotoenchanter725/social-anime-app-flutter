part of 'profile_fill_bloc.dart';

@immutable
abstract class ProfileFillState {}

class ProfileFillInitial extends ProfileFillState {}

class ErrorProfileFillState extends ProfileFillState {
  final String message;

  final bool isEnabled;

  ErrorProfileFillState({required this.message, required this.isEnabled});
}

class LoadingProfileFillState extends ProfileFillState {}

class ChangedStepSucssesfulState extends ProfileFillState {}
