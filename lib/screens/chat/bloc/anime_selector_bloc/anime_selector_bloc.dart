import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';

part 'anime_selector_event.dart';
part 'anime_selector_state.dart';
part 'anime_selector_bloc.freezed.dart';

class AnimeSelectorBloc extends Bloc<AnimeSelectorEvent, AnimeSelectorState> {
  final TextEditingController searchTextController = TextEditingController();

  AnimeSelectorBloc() : super(AnimeSelectorState.initial()) {
    on<AnimeSelectorEvent>((event, emit) {
      event.when(
        toggleSearchMode: () {
          // reset text controller when toggling search mode
          searchTextController.clear();
          final newState = state.copyWith(
            isSearchMode: !state.isSearchMode,
            selectedAnime:
                null, // Reset selected anime when toggling search mode
            description: null, // Reset description when toggling search mode
          );
          emit(newState);
        },
        selectAnime: (AnimeModel selectedAnime) {
          emit(state.copyWith(selectedAnime: selectedAnime));
        },
        updateDescription: (String description) {
          emit(state.copyWith(description: description));
        },
        performSearch: (String query) {
          // Implement search logic here
          // For example, fetch search results and emit new state
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
