part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ErrorProfileState extends ProfileState {
  final String message;

  ErrorProfileState({required this.message});
}

class LoadingProfileState extends ProfileState {}

class FetchSucssesfulState extends ProfileState {}
