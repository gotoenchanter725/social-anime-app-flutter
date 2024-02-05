import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/user_gender/enums/user_gender_enum.dart';

part 'user_gender_event.dart';
part 'user_gender_state.dart';

class UserGenderBloc extends Bloc<UserGenderEvent, UserGenderState> {
  UserGender? userGender;

  UserGenderBloc() : super(UserGenderInitial()) {
    on<OnUserGenderChangedEvent>((event, emit) {
      emit(ValidState());
      userGender = event.userGender;
    });

    on<OnUserGenderInitEvent>((event, emit) {
      if (event.gender != null) {
        emit(LoadingState());
        emit(ValidState());
        userGender = UserGender.genderFromServer(event.gender);
      }
    });

    on<NextTappedEvent>((event, emit) {
      if (userGender != null) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(UserGenderSucssesfulState());
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });
  }
}
