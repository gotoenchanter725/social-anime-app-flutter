part of 'favorite_anime_bloc.dart';

@immutable
abstract class FavoriteAnimeEvent {}

class OnFavoriteAnimeInitEvent extends FavoriteAnimeEvent {
  final List<AnimeModel> selectedAnimeList;

  OnFavoriteAnimeInitEvent({required this.selectedAnimeList});
}

class OnFetchFavoriteAnimeListEvent extends FavoriteAnimeEvent {
  final List<AnimeModel> animeList;

  OnFetchFavoriteAnimeListEvent({required this.animeList});
}

class OnFavoriteAnimeSelectEvent extends FavoriteAnimeEvent {
  final AnimeModel favoriteAnime;

  OnFavoriteAnimeSelectEvent({required this.favoriteAnime});
}

class OnChangeAnimeStepEvent extends FavoriteAnimeEvent {
  final FavoriteAnimeStep step;

  OnChangeAnimeStepEvent({required this.step});
}

class OnSearchAnimesEvent extends FavoriteAnimeEvent {
  final String searchText;

  OnSearchAnimesEvent({required this.searchText});
}

class OnChangePaginationPageEvent extends FavoriteAnimeEvent {
  final int page;

  OnChangePaginationPageEvent({required this.page});
}

class NextTappedEvent extends FavoriteAnimeEvent {}
