part of 'anime_selector_bloc.dart';

@freezed
class AnimeSelectorState with _$AnimeSelectorState {
  const factory AnimeSelectorState({
    @Default(false) bool isSearchMode,
    AnimeModel? selectedAnime,
    String? description,
    @Default(1) int page,
    @Default(false) bool needUpdatePagination,
    @Default('') String searchText,
  }) = _AnimeSelectorState;

  factory AnimeSelectorState.initial() => const AnimeSelectorState();
}
