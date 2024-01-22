part of 'home_storage_bloc.dart';

@immutable
abstract class HomeStorageState {}

class HomeStorageInitial extends HomeStorageState {}

class ErrorHomeStorageState extends HomeStorageState {
  final String message;
  ErrorHomeStorageState({required this.message});
}

class OpenMatchWithNewFiltersState extends HomeStorageState {}

class FetchFiltersSucssesfulState extends HomeStorageState {}

class ValidSaveProfileFiltersState extends HomeStorageState {}

class ValidSaveIsFirstOpenMatchState extends HomeStorageState {}

class ClearAllDataStorageState extends HomeStorageState {}
