import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'verify_photo_event.dart';
part 'verify_photo_state.dart';

enum VerifyPhotoStep {
  verifyByPhoto,
  checkPhoto,
  startMatch,
}

class VerifyPhotoBloc extends Bloc<VerifyPhotoEvent, VerifyPhotoState> {
  VerifyPhotoStep verifyPhotoStep = VerifyPhotoStep.verifyByPhoto;
  File? photo;

  VerifyPhotoBloc() : super(VerifyPhotoInitial()) {
    on<OnVerifyPhotoInitEvent>((event, emit) {
      photo = null;
      verifyPhotoStep = VerifyPhotoStep.verifyByPhoto;
      if (event.photo != null) {
        emit(LoadingState());
        photo = event.photo;
        verifyPhotoStep = VerifyPhotoStep.checkPhoto;
        emit(ValidState());
      }
    });
    on<OnOpenStartMatchSceenEvent>((event, emit) {
      emit(LoadingState());
      verifyPhotoStep = VerifyPhotoStep.startMatch;
      emit(ValidState());
    });

    on<OnStartMatchingEvent>((event, emit) {
      emit(LoadingState());
      emit(VerifyPhotoSucssesfulState());
    });
  }
}
