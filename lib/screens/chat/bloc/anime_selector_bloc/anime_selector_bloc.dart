import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';

part 'anime_selector_event.dart';
part 'anime_selector_state.dart';
part 'anime_selector_bloc.freezed.dart';

class AnimeSelectorBloc extends Bloc<AnimeSelectorEvent, AnimeSelectorState> {
  final TextEditingController searchTextController = TextEditingController();

  AnimeSelectorBloc() : super(const AnimeSelectorState.initial()) {
    on<AnimeSelectorEvent>((event, emit) {
      event.when(
        enterSearchMode: () {
          searchTextController.clear();
          emit(const AnimeSelectorState.searchMode(true, ''));
        },
        exitSearchMode: () {
          searchTextController.clear();
          emit(const AnimeSelectorState.searchMode(false, ''));
        },
        updateSearchText: (searchText) {
          searchTextController.text = searchText;
          emit(AnimeSelectorState.searchMode(true, searchText));
        },
        resetSearchText: () {
          searchTextController.clear();
          emit(const AnimeSelectorState.searchMode(true, ''));
        },
        selectAnime: (anime) => emit(AnimeSelectorState.animeInput(anime, '')),
        setDescription: (description) {
          final currentState = state;
          if (currentState is _AnimeInput) {
            emit(currentState.copyWith(description: description));
          }
        },
      );
    });
  }

  @override
  Future<void> close() {
    searchTextController.dispose();
    return super.close();
  }
}
