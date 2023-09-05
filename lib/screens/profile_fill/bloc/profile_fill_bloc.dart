import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';

import '../../../models/profile_fill/update_user_model.dart';

part 'profile_fill_event.dart';
part 'profile_fill_state.dart';

enum ProfileFillStep {
  welcome,
  firstName,
  birthday,
  gender,
  desiredGender,
  occupation,
  story,
  photos,
  location,
  spotify,
  animes,
  verify
  //add another step
}

class ProfileFillBloc extends Bloc<ProfileFillEvent, ProfileFillState> {
  ProfileFillStep step = ProfileFillStep.welcome;
  UpdateUserModel user = const UpdateUserModel(
    id: '',
  );

  ProfileFillBloc() : super(ProfileFillInitial()) {
    on<OnChangeStepEvent>((event, emit) {
      step = event.step;
      emit(ChangedStepSucssesfulState());
    });

    on<OnFirstNameSaveEvent>((event, emit) {
      if (event.firstName.isNotEmpty) {
        user = user.copyWith(firstName: event.firstName);
        step = ProfileFillStep.birthday;
        emit(LoadingProfileFillState());
        emit(ChangedStepSucssesfulState());
      } else {
        emit(
          ErrorProfileFillState(
            message: TextConstants.serverError,
            isEnabled: true,
          ),
        );
      }
    });

    on<OnUserGenderSaveEvent>((event, emit) {
      user = user.copyWith(gender: event.gender);
      step = ProfileFillStep.desiredGender;
      emit(LoadingProfileFillState());
      emit(ChangedStepSucssesfulState());
    });

    on<OnDesiredGenderSaveEvent>((event, emit) {
      user = user.copyWith(desiredGender: event.gender);
      //change it on occupation
      step = ProfileFillStep.welcome;
      emit(LoadingProfileFillState());
      emit(ChangedStepSucssesfulState());
    });
  }
}
