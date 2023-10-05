part of 'biography_bloc.dart';

@immutable
abstract class BiographyState {}

class BiographyInitial extends BiographyState {}

class ErrorState extends BiographyState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends BiographyState {}

class LoadingState extends BiographyState {}

class BiographySucssesfulState extends BiographyState {}
