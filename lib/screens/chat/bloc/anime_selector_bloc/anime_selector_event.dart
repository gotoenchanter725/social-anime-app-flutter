part of 'anime_selector_bloc.dart';

@freezed
class AnimeSelectorEvent with _$AnimeSelectorEvent {
  const factory AnimeSelectorEvent.enterSearchMode() = _EnterSearchMode;
  const factory AnimeSelectorEvent.exitSearchMode() = _ExitSearchMode;
  factory AnimeSelectorEvent.updateSearchText(String searchText) =
      _UpdateSearchText;
  const factory AnimeSelectorEvent.resetSearchText() = _ResetSearchText;
  const factory AnimeSelectorEvent.selectAnime(AnimeModel anime) = _SelectAnime;
  const factory AnimeSelectorEvent.setDescription(String description) =
      _SetDescription;
}
