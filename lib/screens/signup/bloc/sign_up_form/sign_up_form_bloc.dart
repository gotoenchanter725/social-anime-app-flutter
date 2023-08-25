import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final phoneController = TextEditingController();

  bool isButtonEnabled = false;
  SignUpFormBloc() : super(SignupInitial()) {
    on<OnTextChangedEvent>((event, emit) {
      if (isButtonEnabled != checkIfSignUpButtonEnabled()) {
        isButtonEnabled = checkIfSignUpButtonEnabled();
        emit(SignUpButtonEnableChangedState(isEnabled: isButtonEnabled));
      }
    });

    on<SignUpTappedEvent>((event, emit) async {
      if (checkValidatorOfPhoneNumber()) {
        emit(LoadingState());
        emit(SignUpState());
      } else {
        emit(ErrorState(message: TextConstants.invalidPhoneError));
        emit(ShowErrorState());
      }
    });
  }

  bool checkIfSignUpButtonEnabled() {
    return phoneController.text.isNotEmpty;
  }

  bool checkValidatorOfPhoneNumber() {
    final RegExp phoneRegExp = RegExp(r'^\+\d{12}$');

    if (!phoneRegExp.hasMatch(phoneController.text)) {
      return false;
    }

    return true;
  }
}
