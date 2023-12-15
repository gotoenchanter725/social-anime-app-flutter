part of 'edit_profile_bloc.dart';

@immutable
abstract class EditProfileState {}

class EditProfileInitial extends EditProfileState {}

class ErrorEditProfileState extends EditProfileState {
  final String message;
  ErrorEditProfileState({required this.message});
}

class LoadingEditProfileState extends EditProfileState {}

class FetchSucssesfulState extends EditProfileState {}

class ValidState extends EditProfileState {}

class ErrorEditProfileNameState extends EditProfileState {
  final String message;
  ErrorEditProfileNameState({required this.message});
}
