part of 'universities_bloc.dart';

@immutable
abstract class UniversitiesState {}

class UniversitiesInitial extends UniversitiesState {}

class ErrorUniversitiesState extends UniversitiesState {
  final String message;
  final bool isEnabled;

  ErrorUniversitiesState({required this.message, required this.isEnabled});
}

class LoadingUniversitiesState extends UniversitiesState {}

class UniversitiesSucssesfulState extends UniversitiesState {}
