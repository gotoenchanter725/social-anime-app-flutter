import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/models/profile_fill/photos/upload_photo_model.dart';
import 'package:senpai/models/profile_fill/update_user_model.dart';
import 'package:senpai/models/user_profile/mappers/user_profile_mapper.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  UserProfileModel user = UserProfileModel.initial();
  late UpdateUserModel updateUserModel = UpdateUserModel.initial();
  UserProfileModel userForPreview = UserProfileModel.initial();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController biographyController = TextEditingController();

  bool hideLocation = false;
  bool shareTopSongs = false;
  bool shareTopArtists = false;

  EditProfileBloc() : super(EditProfileInitial()) {
    on<OnFetchUser>((event, emit) {
      emit(LoadingEditProfileState());
      user = event.user;
      userForPreview = event.user;
      updateUserModel = event.user.toUpdateModel();
      hideLocation = event.user.hasLocationHidden == true;
      firstNameController = TextEditingController(text: event.user.firstName);
      biographyController = TextEditingController(text: event.user.bio);

      emit(FetchSucssesfulState());
    });

    on<OnFirstNameSaveEvent>((event, emit) {
      emit(LoadingEditProfileState());
      if (event.firstName.isNotEmpty) {
        updateUserModel = updateUserModel.copyWith(firstName: event.firstName);
        userForPreview = userForPreview.copyWith(firstName: event.firstName);
        emit(ValidState());
      } else {
        emit(
          ErrorEditProfileNameState(
            message: R.strings.invalidFirstNameError,
          ),
        );
      }
    });

    on<OnBiographySaveEvent>((event, emit) {
      emit(LoadingEditProfileState());
      if (event.biography.isNotEmpty) {
        updateUserModel = updateUserModel.copyWith(bio: event.biography);
        userForPreview = userForPreview.copyWith(bio: event.biography);
        emit(ValidState());
      }
    });

    on<OnBirthdaySaveEvent>((event, emit) {
      emit(LoadingEditProfileState());
      if (event.birthday != null) {
        updateUserModel = updateUserModel.copyWith(birthday: event.birthday);
        userForPreview = userForPreview.copyWith(birthday: event.birthday);
        emit(ValidState());
      }
    });
    on<OnUserGenderSaveEvent>((event, emit) {
      emit(LoadingEditProfileState());
      updateUserModel = updateUserModel.copyWith(gender: event.gender);
      emit(ValidState());
    });

    on<OnDesiredGenderSaveEvent>((event, emit) {
      emit(LoadingEditProfileState());
      updateUserModel = updateUserModel.copyWith(desiredGender: event.gender);
      emit(ValidState());
    });

    on<OnOccupationSaveEvent>((event, emit) {
      emit(LoadingEditProfileState());
      updateUserModel = updateUserModel.copyWith(
        school: event.university,
        occupation: event.jobTitle ?? '',
      );
      userForPreview = userForPreview.copyWith(
        school: event.university,
        occupation: event.jobTitle ?? '',
      );
      emit(ValidState());
    });

    on<OnChangeHideLocationEvent>((event, emit) {
      emit(LoadingEditProfileState());
      hideLocation = event.isHideLocation;
      updateUserModel = updateUserModel.copyWith(
        hasLocationHidden: event.isHideLocation,
      );
      emit(ValidState());
    });

    on<OnChangeAnimeListEvent>((event, emit) {
      emit(LoadingEditProfileState());
      user = user.copyWith(animes: event.selectedAnimes);
      userForPreview = userForPreview.copyWith(animes: event.selectedAnimes);
      emit(ValidState());
    });

    on<OnUpdateUserLocationEvent>((event, emit) {
      emit(LoadingEditProfileState());
      user = user.copyWith(
        lonlat: event.lonlat,
        displayCity: event.displayCity,
        displayState: event.displayState,
      );
      emit(ValidState());
    });

    on<OnChangeShareTopSongsEvent>((event, emit) {
      emit(LoadingEditProfileState());
      shareTopSongs = event.isShareTopSongs;
      emit(ValidState());
    });

    on<OnChangeShareTopArtistsEvent>((event, emit) {
      emit(LoadingEditProfileState());
      shareTopArtists = event.isShareTopArtists;
      emit(ValidState());
    });
    on<OnChangePhotosListEvent>((event, emit) {
      emit(LoadingEditProfileState());
      userForPreview = userForPreview.copyWith(
        gallery: userForPreview.gallery?.copyWith(
          photos: event.photos,
        ),
      );
      emit(ValidState());
    });
  }
}
