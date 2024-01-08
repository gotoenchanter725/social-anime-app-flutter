part of 'anime_selector_bloc.dart';

@freezed
class AnimeSelectorState with _$AnimeSelectorState {
  const factory AnimeSelectorState.initial() = _Initial;
  const factory AnimeSelectorState.searchMode(
      bool isInSearchMode, String searchText) = _SearchMode;
  const factory AnimeSelectorState.animeInput(
      AnimeModel selectedAnime, String description) = _AnimeInput;
}
