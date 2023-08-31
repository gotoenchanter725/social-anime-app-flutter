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
  //add another step
}

class ProfileFillBloc extends Bloc<ProfileFillEvent, ProfileFillState> {
  ProfileFillStep step = ProfileFillStep.welcome;
  UpdateUserModel user = const UpdateUserModel(
    id: '',
    firstName: '',
    birthday: '',
  );

  ProfileFillBloc() : super(ProfileFillInitial()) {
    on<OnChangeStepEvent>((event, emit) async {
      step = event.step;
      emit(ChangedStepSucssesfulState());
    });
    on<OnFirstNameSaveEvent>((event, emit) async {
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
  }
}
