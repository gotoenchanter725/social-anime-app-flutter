part of 'profile_filter_bloc.dart';

@immutable
abstract class ProfileFilterEvent {}

class OnInitFilters extends ProfileFilterEvent {
  final ProfileFilterModel initialFilters;
  OnInitFilters({required this.initialFilters});
}

class OnChangeAge extends ProfileFilterEvent {
  final RangeValues values;
  OnChangeAge({required this.values});
}

class OnChangeDistance extends ProfileFilterEvent {
  final double distance;
  OnChangeDistance({required this.distance});
}

class OnChangePhotoVerifiedStatus extends ProfileFilterEvent {
  final bool isVerified;
  OnChangePhotoVerifiedStatus({required this.isVerified});
}

class OnChangeUserHasBio extends ProfileFilterEvent {
  final bool hasBio;
  OnChangeUserHasBio({required this.hasBio});
}

class OnChangeSelectedAnimeList extends ProfileFilterEvent {
  final List<AnimeModel> selectedAnimeList;
  OnChangeSelectedAnimeList({required this.selectedAnimeList});
}

class OnChangeFilterStepEvent extends ProfileFilterEvent {
  final ProfileFilterStep step;
  OnChangeFilterStepEvent({required this.step});
}

class OnApplyFilters extends ProfileFilterEvent {
  OnApplyFilters();
}

class OnClearAllFilters extends ProfileFilterEvent {
  OnClearAllFilters();
}
