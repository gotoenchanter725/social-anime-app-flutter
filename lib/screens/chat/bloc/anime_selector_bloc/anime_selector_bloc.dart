import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';

part 'anime_selector_event.dart';
part 'anime_selector_state.dart';
part 'anime_selector_bloc.freezed.dart';

class AnimeSelectorBloc extends Bloc<AnimeSelectorEvent, AnimeSelectorState> {
  final TextEditingController searchTextController = TextEditingController();
  static const int delayForDebounce = 500;

  FocusNode searchFocusNode = FocusNode();

  Timer? _debounce;

  ScrollController animeListController = ScrollController();

  void setupSearch() {
    searchFocusNode.requestFocus();
  }

  AnimeSelectorBloc() : super(AnimeSelectorState.initial()) {
    on<AnimeSelectorEvent>((event, emit) {
      event.when(
        toggleSearchMode: () {
          // reset text controller when toggling search mode
          searchTextController.clear();
          //add pagination listener
          animeListController.removeListener(_pagination);
          animeListController.addListener(_pagination);
          final newState = state.copyWith(
            isSearchMode: !state.isSearchMode,
            selectedAnime:
                null, // Reset selected anime when toggling search mode
            description: null, // Reset description when toggling search mode
            page: 1,
            needUpdatePagination: false,
          );
          emit(newState);
        },
        selectAnime: (AnimeModel selectedAnime) {
          emit(state.copyWith(
            selectedAnime: selectedAnime,
            needUpdatePagination: false,
          ));
        },
        updateDescription: (String description) {
          emit(state.copyWith(
            description: description,
            needUpdatePagination: false,
          ));
        },
        performSearch: (String query) {
          // Implement search logic here
          // For example, fetch search results and emit new state
          final newState = state.copyWith(
            searchText: query,
            page: 1,
            needUpdatePagination: false,
          );
          emit(newState);
        },
        updatePagination: (bool needUpdatePagination, int page) {
          final newState = state.copyWith(
            page: page,
            needUpdatePagination: needUpdatePagination,
          );
          emit(newState);
        },
      );
    });
  }

  performSideEffects(void Function(String) callback) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }

    _debounce = Timer(
        const Duration(
          milliseconds: AnimeSelectorBloc.delayForDebounce,
        ), () {
      callback(searchTextController.text);
      add(AnimeSelectorEvent.performSearch(searchTextController.text));
    });
  }

  Future<void> _pagination() async {
    final pixels = animeListController.position.pixels;
    final maxScrollExtent = animeListController.position.maxScrollExtent;
    final minScrollExtent = animeListController.position.minScrollExtent;

    if (pixels == maxScrollExtent) {
      add(
        AnimeSelectorEvent.updatePagination(
          needUpdatePagination: true,
          page: state.page + 1,
        ),
      );
    }
    if (state.needUpdatePagination) {
      add(
        AnimeSelectorEvent.updatePagination(
          needUpdatePagination: false,
          page: state.page,
        ),
      );
    }

    if (pixels == minScrollExtent && state.page > 1) {
      add(
        AnimeSelectorEvent.updatePagination(
          needUpdatePagination: true,
          page: state.page - 1,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    searchTextController.dispose();
    animeListController.dispose();
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }
    return super.close();
  }
}
