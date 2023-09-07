import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';

part 'biography_event.dart';
part 'biography_state.dart';

class BiographyBloc extends Bloc<BiographyEvent, BiographyState> {
  TextEditingController biographyController = TextEditingController();

  String biographyText = '';

  BiographyBloc() : super(BiographyInitial()) {
    on<OnBiographyInitEvent>((event, emit) {
      if (event.bio.isNotEmpty) {
        emit(ValidState());

        biographyController = TextEditingController(text: event.bio);
        biographyText = event.bio;
      }
    });

    on<OnBiographyChangedEvent>((event, emit) {
      emit(ErrorState(
        message: TextConstants.serverError,
        isEnabled: false,
      ));
      biographyText = event.biography;
    });

    on<NextTappedEvent>((event, emit) {
      if (biographyText.isNotEmpty) {
        emit(ErrorState(
          message: TextConstants.serverError,
          isEnabled: false,
        ));
        emit(ValidState());
        emit(LoadingState());
        emit(BiographySucssesfulState());
      } else {
        emit(ErrorState(message: TextConstants.serverError, isEnabled: true));
      }
    });
  }
}
