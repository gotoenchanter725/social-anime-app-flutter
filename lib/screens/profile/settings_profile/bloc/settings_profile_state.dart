part of 'settings_profile_bloc.dart';

@immutable
abstract class SettingsProfileState {}

class SettingsProfileInitial extends SettingsProfileState {}

class ErrorState extends SettingsProfileState {
  final String message;
  final bool isEnabled;

  ErrorState({required this.message, required this.isEnabled});
}

class ValidState extends SettingsProfileState {}

class LoadingState extends SettingsProfileState {}

class SettingsProfileSucssesfulState extends SettingsProfileState {}

class ChangePhoneNumberState extends SettingsProfileState {}

class ValidSaveIsVerifyPhoneState extends SettingsProfileState {}

class LogoutSucssesfulState extends SettingsProfileState {}

class LogoutLoadingState extends SettingsProfileState {}
