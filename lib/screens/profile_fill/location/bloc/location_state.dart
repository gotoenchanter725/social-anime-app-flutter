part of 'location_bloc.dart';

@immutable
abstract class LocationState {}

class LocationInitial extends LocationState {}

class ErrorState extends LocationState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends LocationState {}

class LoadingState extends LocationState {}

class LocationSucssesfulState extends LocationState {}
