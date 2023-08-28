part of 'otp_form_bloc.dart';

@freezed
class OtpFormState with _$OtpFormState {
  const factory OtpFormState({
    required String otpCode,
    required bool isSubmitting,
    required bool isResendButtonActive,
    required bool isError,
  }) = _OtpFormState;
}
