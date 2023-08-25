import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/methods/utils.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final phoneController = TextEditingController();

  PhoneNumber phoneNumber = PhoneNumber();

  SignUpFormBloc() : super(SignupInitial()) {
    on<OnTextChangedEvent>((event, emit) {
      if (isValidPhoneNumber(phoneController.text)) {
        emit(ErrorState(message: '', isEnabled: false));
        emit(ValidState());
      } else {
        emit(ErrorState(
            message: TextConstants.invalidPhoneError, isEnabled: true));
      }
      phoneNumber = event.phoneNumber;
    });

    on<SignUpTappedEvent>((event, emit) async {
      if (isValidPhoneNumber(phoneController.text)) {
        emit(ErrorState(message: '', isEnabled: false));
        emit(ValidState());
        emit(LoadingState());
        emit(SignUpState());
      } else {
        emit(ErrorState(
            message: TextConstants.invalidPhoneError, isEnabled: true));
      }
    });
  }
}
