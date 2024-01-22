part of 'home_storage_bloc.dart';

@immutable
abstract class HomeStorageEvent {}

class OnClearStorageData extends HomeStorageEvent {
  OnClearStorageData();
}

class OnApplyProfileFilters extends HomeStorageEvent {
  final ProfileFilterModel filters;
  OnApplyProfileFilters({required this.filters});
}

class OnOpenMatchScreen extends HomeStorageEvent {
  OnOpenMatchScreen();
}

class OnSaveFirstOpenMatch extends HomeStorageEvent {
  OnSaveFirstOpenMatch();
}
