part of 'otp_form_bloc.dart';

@freezed
class OtpFormEvent with _$OtpFormEvent {
  const factory OtpFormEvent.codeChanged(String otpCode) = _CodeChanged;
  const factory OtpFormEvent.submit() = _Submit;
  const factory OtpFormEvent.resend() = _Resend;
  const factory OtpFormEvent.activateResend() = _ActivateResend;
  const factory OtpFormEvent.failed() = _Failed;
}
