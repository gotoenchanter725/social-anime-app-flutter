part of 'profile_filter_bloc.dart';

@immutable
abstract class ProfileFilterState {}

class ProfileFilterInitial extends ProfileFilterState {}

class ErrorProfileFilterState extends ProfileFilterState {
  final String message;

  final bool isEnabled;

  ErrorProfileFilterState({required this.message, required this.isEnabled});
}

class LoadingProfileFilterState extends ProfileFilterState {}

class FetchSucssesfulState extends ProfileFilterState {}

class ValidState extends ProfileFilterState {}

class ValidSaveState extends ProfileFilterState {}

class ClearAllFiltersState extends ProfileFilterState {}
