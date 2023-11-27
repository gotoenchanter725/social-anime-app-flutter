import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:senpai/data/storage_keys_constants.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/models/user_profile/profile_filter/profile_filter_model.dart';

part 'profile_filter_event.dart';
part 'profile_filter_state.dart';

enum ProfileFiltersEnums {
  minAge,
  maxAge,
  milesAway,
  hasBio,
  verified,
  animeIds;
}

enum ProfileFilterStep {
  filters,
  animes;
}

class ProfileFilterBloc extends Bloc<ProfileFilterEvent, ProfileFilterState>
    with HydratedMixin {
  double minDistance = 1.0;
  double maxDistance = 75.0;

  double minAgeRange = 16.0;
  double maxAgeRange = 99.0;

  ProfileFilterModel changedFilters = ProfileFilterModel.initial();
  ProfileFilterModel initialFilters = ProfileFilterModel.initial();

  Set<ProfileFiltersEnums> counterChangesList = Set.identity();

  ProfileFilterStep step = ProfileFilterStep.filters;

  ProfileFilterBloc() : super(ProfileFilterInitial()) {
    on<OnChangeAge>((event, emit) {
      emit(LoadingProfileFilterState());
      changedFilters = changedFilters.copyWith(
        minAge: event.values.start.toInt(),
        maxAge: event.values.end.toInt(),
      );

      changedFilters.minAge != initialFilters.minAge
          ? counterChangesList.add(ProfileFiltersEnums.minAge)
          : counterChangesList.remove(ProfileFiltersEnums.minAge);

      changedFilters.maxAge != initialFilters.maxAge
          ? counterChangesList.add(ProfileFiltersEnums.maxAge)
          : counterChangesList.remove(ProfileFiltersEnums.maxAge);

      emit(FetchSucssesfulState());
    });

    on<OnChangeDistance>((event, emit) {
      emit(LoadingProfileFilterState());
      changedFilters = changedFilters.copyWith(
        milesAway: event.distance.toInt(),
      );
      changedFilters.milesAway != initialFilters.milesAway
          ? counterChangesList.add(ProfileFiltersEnums.milesAway)
          : counterChangesList.remove(ProfileFiltersEnums.milesAway);
      emit(FetchSucssesfulState());
    });

    on<OnChangePhotoVerifiedStatus>((event, emit) {
      emit(LoadingProfileFilterState());
      changedFilters = changedFilters.copyWith(verified: event.isVerified);
      changedFilters.verified != initialFilters.verified
          ? counterChangesList.add(ProfileFiltersEnums.verified)
          : counterChangesList.remove(ProfileFiltersEnums.verified);
      emit(FetchSucssesfulState());
    });

    on<OnChangeUserHasBio>((event, emit) {
      emit(LoadingProfileFilterState());
      changedFilters = changedFilters.copyWith(hasBio: event.hasBio);
      changedFilters.hasBio != initialFilters.hasBio
          ? counterChangesList.add(ProfileFiltersEnums.hasBio)
          : counterChangesList.remove(ProfileFiltersEnums.hasBio);
      emit(FetchSucssesfulState());
    });

    on<OnChangeSelectedAnimeList>((event, emit) {
      emit(LoadingProfileFilterState());
      final selectedAnimesIds =
          event.selectedAnimeList.map((anime) => anime.id).toList();

      changedFilters = changedFilters.copyWith(animeIds: selectedAnimesIds);

      changedFilters.animeIds != initialFilters.animeIds
          ? counterChangesList.add(ProfileFiltersEnums.animeIds)
          : counterChangesList.remove(ProfileFiltersEnums.animeIds);
      step = ProfileFilterStep.filters;
      emit(ValidState());
    });

    on<OnChangeFilterStepEvent>((event, emit) {
      emit(LoadingProfileFilterState());
      step = event.step;
      emit(ValidState());
    });

    on<OnApplyFilters>((event, emit) async {
      emit(LoadingProfileFilterState());
      emit(ValidSaveState());
    });

    on<OnClearAllFilters>((event, emit) async {
      emit(LoadingProfileFilterState());
      emit(ClearAllFiltersState());
    });
  }

  @override
  ProfileFilterState? fromJson(Map<String, dynamic> json) {
    try {
      initialFilters = ProfileFilterModel.fromJson(
          json[StorageKeysConstants.profileFilters]);
      changedFilters = ProfileFilterModel.fromJson(
          json[StorageKeysConstants.profileFilters]);

      return FetchSucssesfulState();
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ProfileFilterState state) {
    if (state is ValidSaveState) {
      return {StorageKeysConstants.profileFilters: changedFilters};
    } else if (state is ClearAllFiltersState) {
      return {StorageKeysConstants.profileFilters: initialFilters};
    } else {
      return null;
    }
  }
}
