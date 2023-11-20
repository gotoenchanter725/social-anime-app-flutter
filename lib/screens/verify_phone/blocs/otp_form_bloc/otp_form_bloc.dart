import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_form_event.dart';
part 'otp_form_state.dart';
part 'otp_form_bloc.freezed.dart';

class OTPFormBloc extends Bloc<OtpFormEvent, OtpFormState> {
  bool isProfileFilled = false;

  OTPFormBloc()
      : super(
          const OtpFormState(
            otpCode: '',
            isSubmitting: false,
            isResendButtonActive: true,
            isError: false,
          ),
        ) {
    on<OtpFormEvent>((event, emit) {
      event.when(codeChanged: (String otpCode) {
        emit(state.copyWith(otpCode: otpCode));
      }, submit: () {
        if (!_validateCode(state.otpCode)) {
          emit(state.copyWith(isError: true, isSubmitting: false));
          return;
        }
        emit(state.copyWith(isSubmitting: true, isError: false));
      }, resend: () {
        emit(state.copyWith(isResendButtonActive: false));
      }, activateResend: () {
        emit(state.copyWith(isResendButtonActive: true));
      }, failed: () {
        emit(state.copyWith(isError: true, isSubmitting: false));
      });
    });
  }

  bool _validateCode(String code) {
    return code.length == 6;
  }
}
