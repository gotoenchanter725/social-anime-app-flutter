import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
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

  List<AnimeModel> myAnimeList = [];
  bool showMyAnimeList = true;

  Set<AnimeGenresEnums> genresList = Set.identity();

  FavoriteAnimeBloc() : super(FavoriteAnimeInitial()) {
    on<OnFavoriteAnimeInitEvent>((event, emit) {
      if (event.selectedAnimeList.isNotEmpty) {
        selectedAnimeList = [];
        selectedAnimeList.addAll(event.selectedAnimeList);
      }
      if (event.myAnimeList != null) {
        myAnimeList = event.myAnimeList!;
      }
      if (event.premium == true) {
        maxAnimeCount = 15;
      }

      animeListController.addListener(_pagination);
      emit(ValidState());
    });

    on<OnFetchFavoriteAnimeListEvent>((event, emit) {
      emit(LoadingState());
      if (page == 1) {
        animeList = event.animeList;
      } else {
        animeList.addAll(event.animeList);
      }
      emit(ValidState());
    });

    on<OnSearchAnimesEvent>((event, emit) {
      emit(LoadingState());
      page = 1;
      searchText = event.searchText;
      if (searchText.isNotEmpty && showMyAnimeList) {
        showMyAnimeList = false;
      }
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<OnSelectGenreAnimesEvent>((event, emit) {
      emit(LoadingState());
      page = 1;
      if (event.selected) {
        genresList.add(event.genre);
        showMyAnimeList = false;
      } else {
        genresList.remove(event.genre);
      }
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<OnChangeAnimeStepEvent>((event, emit) {
      emit(ErrorState(
        message: R.strings.serverError,
        isEnabled: false,
      ));
      step = event.step;
      page = 1;
      emit(ValidState());
      emit(FavoriteAnimeFetchState());
    });

    on<OnFavoriteAnimeSelectEvent>((event, emit) {
      emit(LoadingState());
      if (selectedAnimeList.length >= maxAnimeCount) {
        emit(ErrorState(
          message: R.strings.selectedAnimeError,
          isEnabled: false,
        ));
        if (event.isSelectedAnime) {
          selectedAnimeList.removeWhere(
            (anime) => anime.id == event.favoriteAnime.id,
          );
        }
      } else {
        event.isSelectedAnime
            ? selectedAnimeList.removeWhere(
                (anime) => anime.id == event.favoriteAnime.id,
              )
            : selectedAnimeList.add(event.favoriteAnime);
      }
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
          message: R.strings.serverError,
          isEnabled: false,
        ));
        emit(ValidState());
        emit(LoadingState());
        emit(FavoriteAnimeSucssesfulState());
      } else {
        emit(ErrorState(message: R.strings.animeError, isEnabled: true));
      }
    });

    on<OnChangeShowMyAnimeListEvent>((event, emit) {
      emit(LoadingState());
      showMyAnimeList = event.showMyAnimeList;
      if (event.showMyAnimeList) {
        genresList = Set.identity();
      }

      emit(ValidState());
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
