part of 'occupation_bloc.dart';

@immutable
abstract class OccupationState {}

class OccupationInitial extends OccupationState {}

class ErrorUniversityState extends OccupationState {
  final String message;
  final bool isEnabled;

  ErrorUniversityState({required this.message, required this.isEnabled});
}

class ErrorJobState extends OccupationState {
  final String message;
  final bool isEnabled;

  ErrorJobState({required this.message, required this.isEnabled});
}

class ValidUniversityState extends OccupationState {}

class ValidJobState extends OccupationState {}

class LoadingState extends OccupationState {}

class OccupationSucssesfulState extends OccupationState {}
