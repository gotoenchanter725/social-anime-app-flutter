import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/profile_fill/favorite_anime/enums/anime_enums.dart';

part 'favorite_anime_event.dart';
part 'favorite_anime_state.dart';

enum FavoriteAnimeStep {
  animeContent,
  searchContent,
}

class FavoriteAnimeBloc extends Bloc<FavoriteAnimeEvent, FavoriteAnimeState> {
  FavoriteAnimeStep step = FavoriteAnimeStep.animeContent;

  ScrollController animeListController = ScrollController();

  TextEditingController searchController = TextEditingController();
  String searchText = '';
  List<AnimeModel> selectedAnimeList = [];
  List<AnimeModel> animeList = [];
  int page = 1;
  int maxAnimeCount = 10;

  Set<AnimeGenresEnums> genresList = Set.identity();

  FavoriteAnimeBloc() : super(FavoriteAnimeInitial()) {
    on<OnFavoriteAnimeInitEvent>((event, emit) {
      if (event.selectedAnimeList.isNotEmpty) {
        emit(ValidState());
        selectedAnimeList = event.selectedAnimeList;
      }
      animeListController.addListener(_pagination);
    });

    on<OnFetchFavoriteAnimeListEvent>((event, emit) {
      emit(LoadingState());
      emit(ValidState());
      if (page == 1) {
        animeList = event.animeList;
      } else {
        animeList.addAll(event.animeList);
      }
    });

    on<OnSearchAnimesEvent>((event, emit) {
      emit(LoadingState());
      searchText = event.searchText;
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<OnSelectGenreAnimesEvent>((event, emit) {
      emit(LoadingState());
      if (event.selected) {
        genresList.add(event.genre);
      } else {
        genresList.remove(event.genre);
      }
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<OnChangeAnimeStepEvent>((event, emit) {
      emit(ErrorState(
        message: TextConstants.serverError,
        isEnabled: false,
      ));
      step = event.step;
      page = 1;
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<OnFavoriteAnimeSelectEvent>((event, emit) {
      bool isSelectedAnime = selectedAnimeList.contains(event.favoriteAnime);
      if (selectedAnimeList.length >= 10) {
        emit(ErrorState(
          message: TextConstants.selectedAnimeError,
          isEnabled: false,
        ));
        if (isSelectedAnime) {
          selectedAnimeList.remove(event.favoriteAnime);
        }
      } else {
        isSelectedAnime
            ? selectedAnimeList.remove(event.favoriteAnime)
            : selectedAnimeList.add(event.favoriteAnime);
      }
      emit(LoadingState());
      emit(ValidState());
    });

    on<OnChangePaginationPageEvent>((event, emit) {
      page = event.page;
      emit(LoadingState());
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<NextTappedEvent>((event, emit) {
      if (selectedAnimeList.isNotEmpty) {
        emit(ErrorState(
          message: TextConstants.serverError,
          isEnabled: false,
        ));
        emit(ValidState());
        emit(LoadingState());
        emit(FavoriteAnimeSucssesfulState());
      } else {
        emit(ErrorState(message: TextConstants.serverError, isEnabled: true));
      }
    });
  }

  Future<void> _pagination() async {
    final pixels = animeListController.position.pixels;
    final maxScrollExtent = animeListController.position.maxScrollExtent;

    if (pixels == maxScrollExtent) {
      add(OnChangePaginationPageEvent(page: page + 1));
    }
  }
}
