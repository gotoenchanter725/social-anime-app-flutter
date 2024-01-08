part of 'edit_location_bloc.dart';

@immutable
abstract class EditLocationState {}

class EditLocationInitial extends EditLocationState {}

class ErrorState extends EditLocationState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends EditLocationState {}

class LoadingState extends EditLocationState {}

class ValidCircleMarkerState extends EditLocationState {}
