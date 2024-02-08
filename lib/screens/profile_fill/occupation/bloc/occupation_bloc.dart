import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';

part 'occupation_event.dart';
part 'occupation_state.dart';

class OccupationBloc extends Bloc<OccupationEvent, OccupationState> {
  TextEditingController universityController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  String universityName = '';
  String jobTitle = '';

  OccupationBloc() : super(OccupationInitial()) {
    on<OnOccupationInitEvent>((event, emit) {
      if (event.school.isNotEmpty) {
        emit(ValidUniversityState());

        universityController = TextEditingController(text: event.school);
        universityName = event.school;
      }
      if (event.occupation.isNotEmpty) {
        emit(ValidJobState());

        jobController = TextEditingController(text: event.occupation);
        jobTitle = event.occupation;
      }
    });

    on<OnUniversityChangedEvent>((event, emit) async {
      emit(ValidUniversityState());
      emit(ErrorUniversityState(
        message: R.strings.serverError,
        isEnabled: false,
      ));
      universityName = event.university;
    });

    on<OnJobTitleChangedEvent>((event, emit) {
      emit(ErrorJobState(message: R.strings.serverError, isEnabled: false));
      jobTitle = event.jobTitle;
    });

    on<NextTappedEvent>((event, emit) {
      if (universityName.isNotEmpty) {
        emit(ErrorUniversityState(
          message: R.strings.serverError,
          isEnabled: false,
        ));
        emit(ErrorJobState(
          message: R.strings.serverError,
          isEnabled: false,
        ));
        emit(ValidUniversityState());
        emit(ValidJobState());
        emit(LoadingState());
        emit(OccupationSucssesfulState());
      } else {
        emit(
          ErrorUniversityState(
            message: R.strings.serverError,
            isEnabled: true,
          ),
        );
      }
    });
  }
}
