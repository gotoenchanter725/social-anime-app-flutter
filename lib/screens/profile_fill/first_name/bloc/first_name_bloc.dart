import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';
part 'first_name_event.dart';
part 'first_name_state.dart';

class FirstNameBloc extends Bloc<FirstNameEvent, FirstNameState> {
  final firstNameController = TextEditingController();

  String firstName = '';

  FirstNameBloc() : super(FirstNameInitial()) {
    on<OnFirstNameChangedEvent>((event, emit) {
      if (firstNameController.text.isNotEmpty) {
        emit(ErrorState(message: TextConstants.serverError, isEnabled: false));
        emit(ValidState());
      } else {
        emit(ErrorState(message: TextConstants.serverError, isEnabled: true));
      }

      firstName = event.firstName;
    });

    on<NextTappedEvent>((event, emit) async {
      if (firstNameController.text.isNotEmpty) {
        emit(ErrorState(message: TextConstants.serverError, isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(FirstNameSucssesfulState());
      } else {
        emit(ErrorState(message: TextConstants.serverError, isEnabled: true));
      }
    });
  }
}
