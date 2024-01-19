part of 'edit_profile_bloc.dart';

@immutable
abstract class EditProfileEvent {}

class OnFetchUser extends EditProfileEvent {
  final UserProfileModel user;

  OnFetchUser({required this.user});
}

class OnFirstNameSaveEvent extends EditProfileEvent {
  final String firstName;

  OnFirstNameSaveEvent({required this.firstName});
}

class OnBiographySaveEvent extends EditProfileEvent {
  final String biography;

  OnBiographySaveEvent({required this.biography});
}

class OnBirthdaySaveEvent extends EditProfileEvent {
  final DateTime? birthday;

  OnBirthdaySaveEvent({required this.birthday});
}

class OnUserGenderSaveEvent extends EditProfileEvent {
  final int gender;

  OnUserGenderSaveEvent({required this.gender});
}

class OnDesiredGenderSaveEvent extends EditProfileEvent {
  final int gender;

  OnDesiredGenderSaveEvent({required this.gender});
}

class OnOccupationSaveEvent extends EditProfileEvent {
  final String university;
  final String? jobTitle;

  OnOccupationSaveEvent({required this.university, this.jobTitle});
}

class OnChangeHideLocationEvent extends EditProfileEvent {
  final bool isHideLocation;

  OnChangeHideLocationEvent({required this.isHideLocation});
}

class OnChangeAnimeListEvent extends EditProfileEvent {
  final List<AnimeModel> selectedAnimes;

  OnChangeAnimeListEvent({required this.selectedAnimes});
}

class OnUpdateUserLocationEvent extends EditProfileEvent {
  final String? lonlat;
  final String? displayCity;
  final String? displayState;

  OnUpdateUserLocationEvent({
    this.lonlat,
    this.displayCity,
    this.displayState,
  });
}

class OnChangeShareTopSongsEvent extends EditProfileEvent {
  final bool isShareTopSongs;
  OnChangeShareTopSongsEvent({required this.isShareTopSongs});
}

class OnChangeShareTopArtistsEvent extends EditProfileEvent {
  final bool isShareTopArtists;
  OnChangeShareTopArtistsEvent({required this.isShareTopArtists});
}

class OnChangePhotosListEvent extends EditProfileEvent {
  final List<UploadPhotoModel> photos;

  OnChangePhotosListEvent({required this.photos});
}
