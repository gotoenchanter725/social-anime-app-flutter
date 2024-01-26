import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/data/storage_keys_constants.dart';
import 'package:senpai/models/user_profile/profile_filter/profile_filter_model.dart';

part 'home_storage_event.dart';
part 'home_storage_state.dart';

@injectable
class HomeStorageBloc extends HydratedBloc<HomeStorageEvent, HomeStorageState> {
  ProfileFilterModel filters = ProfileFilterModel.initial();
  bool isFirstOpenMatch = true;

  HomeStorageBloc() : super(HomeStorageInitial()) {
    on<OnClearStorageData>((event, emit) async {
      emit(ClearAllDataStorageState());
    });

    on<OnApplyProfileFilters>((event, emit) {
      filters = event.filters;
      emit(ValidSaveProfileFiltersState());
    });

    on<OnOpenMatchScreen>((event, emit) {
      emit(OpenMatchWithNewFiltersState());
    });

    on<OnSaveFirstOpenMatch>((event, emit) {
      isFirstOpenMatch = false;
      emit(ValidSaveIsFirstOpenMatchState());
    });
  }

  @override
  HomeStorageState? fromJson(Map<String, dynamic> json) {
    try {
      isFirstOpenMatch = json[StorageKeysConstants.isFirstOpenMatch];
      filters = ProfileFilterModel.fromJson(
        json[StorageKeysConstants.profileFilters],
      );
      return FetchFiltersSucssesfulState();
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(HomeStorageState state) {
    if (state is ValidSaveProfileFiltersState ||
        state is ValidSaveIsFirstOpenMatchState) {
      return {
        StorageKeysConstants.profileFilters: filters,
        StorageKeysConstants.isFirstOpenMatch: isFirstOpenMatch
      };
    } else {
      return null;
    }
  }
}
