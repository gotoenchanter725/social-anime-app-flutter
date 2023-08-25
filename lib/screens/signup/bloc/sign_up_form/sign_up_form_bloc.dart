import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/methods/utils.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final phoneController = TextEditingController();

  SignUpFormBloc() : super(SignupInitial()) {
    on<OnTextChangedEvent>((event, emit) {
      if (isValidPhoneNumber(phoneController.text)) {
        emit(ErrorState(message: '', isEnabled: false));
      } else {
        emit(ErrorState(
            message: TextConstants.invalidPhoneError, isEnabled: true));
      }
    });

    on<SignUpTappedEvent>((event, emit) async {
      if (isValidPhoneNumber(phoneController.text)) {
        emit(ErrorState(message: '', isEnabled: false));
        emit(LoadingState());
        emit(SignUpState());
      } else {
        emit(ErrorState(
            message: TextConstants.invalidPhoneError, isEnabled: true));
      }
    });
  }
}
