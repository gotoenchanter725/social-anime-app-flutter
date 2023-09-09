part of 'user_gender_bloc.dart';

@immutable
abstract class UserGenderState {}

class UserGenderInitial extends UserGenderState {}

class ErrorState extends UserGenderState {
  final String message;

  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends UserGenderState {}

class LoadingState extends UserGenderState {}

class UserGenderSucssesfulState extends UserGenderState {}
