part of 'anime_selector_bloc.dart';

@freezed
class AnimeSelectorEvent with _$AnimeSelectorEvent {
  const factory AnimeSelectorEvent.toggleSearchMode() = _ToggleSearchMode;
  const factory AnimeSelectorEvent.selectAnime(AnimeModel selectedAnime) =
      _SelectAnime;
  const factory AnimeSelectorEvent.updateDescription(String description) =
      _UpdateDescription;
  const factory AnimeSelectorEvent.performSearch(String query) = _PerformSearch;

  const factory AnimeSelectorEvent.updatePagination({
    required bool needUpdatePagination,
    required int page,
  }) = _UpdatePagination;
}
