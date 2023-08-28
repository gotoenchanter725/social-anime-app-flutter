import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_form_event.dart';
part 'otp_form_state.dart';
part 'otp_form_bloc.freezed.dart';

class OTPFormBloc extends Bloc<OtpFormEvent, OtpFormState> {
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
          emit(state.copyWith(isError: true));
          return;
        }
        emit(state.copyWith(isSubmitting: true));
      }, resend: () {
        emit(state.copyWith(isResendButtonActive: false));
      }, activateResend: () {
        emit(state.copyWith(isResendButtonActive: true));
      });
    });
  }

  bool _validateCode(String code) {
    return code.length == 6;
  }
}
