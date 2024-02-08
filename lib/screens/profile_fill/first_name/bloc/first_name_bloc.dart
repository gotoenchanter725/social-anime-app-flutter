import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';

part 'first_name_event.dart';
part 'first_name_state.dart';

class FirstNameBloc extends Bloc<FirstNameEvent, FirstNameState> {
  TextEditingController firstNameController = TextEditingController();

  String firstName = '';

  FirstNameBloc() : super(FirstNameInitial()) {
    on<OnFirstNameChangedEvent>((event, emit) {
      if (firstNameController.text.isNotEmpty) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }

      firstName = event.firstName;
    });

    on<OnFirstNameInitEvent>((event, emit) {
      if (event.firstName.isNotEmpty) {
        emit(LoadingState());
        emit(ValidState());
        firstNameController = TextEditingController(text: event.firstName);
        firstName = event.firstName;
      }
    });

    on<NextTappedEvent>((event, emit) {
      if (firstName.isNotEmpty) {
        emit(ErrorState(message: R.strings.serverError, isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(FirstNameSucssesfulState());
      } else {
        emit(ErrorState(message: R.strings.serverError, isEnabled: true));
      }
    });
  }
}
