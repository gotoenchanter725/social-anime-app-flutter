import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/desired_gender/enums/desired_gender_enum.dart';

part 'desired_gender_event.dart';
part 'desired_gender_state.dart';

class DesiredGenderBloc extends Bloc<DesiredGenderEvent, DesiredGenderState> {
  DesiredGender? desiredGender;

  DesiredGenderBloc() : super(DesiredGenderInitial()) {
    on<OnDesiredGenderInitEvent>((event, emit) {
      if (event.gender != null) {
        emit(LoadingState());
        emit(ValidState());
        desiredGender = DesiredGender.genderFromServer(event.gender);
      }
    });

    on<OnDesiredGenderChangedEvent>((event, emit) {
      emit(ValidState());
      desiredGender = event.desiredGender;
    });

    on<NextTappedEvent>((event, emit) {
      if (desiredGender != null) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(DesiredGenderSucssesfulState());
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });
  }
}
