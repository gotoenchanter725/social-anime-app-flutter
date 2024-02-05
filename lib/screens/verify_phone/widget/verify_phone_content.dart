import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/text_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/verify_phone/blocs/otp_form_bloc/otp_form_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyPhoneContent extends StatelessWidget {
  const VerifyPhoneContent({super.key, required this.phone, required this.id});

  final String phone;
  final String id;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: $constants.insets.xl,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SenpaiIconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    iconPath: PathConstants.backIcon,
                  )
                ],
              ),
              SizedBox(
                height: $constants.insets.lg,
              ),
              Text(
                R.strings.verifyPhoneHeading,
                style: getTextTheme(context)
                    .headlineLarge
                    ?.copyWith(color: $constants.palette.white),
                textAlign: TextAlign.left,
              ),
              Text(
                "${R.strings.verifyPhoneInstruction} $phone",
                style: getTextTheme(context).labelMedium?.copyWith(
                      color: $constants.palette.grey2,
                    ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: $constants.insets.lg,
              ),
              _buildInputField(context),
              SizedBox(
                height: $constants.insets.sm,
              ),
              _buildResendAction(context),
              SizedBox(
                height: $constants.insets.lg,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildSubmitButton(context),
                ),
              ),
              SizedBox(
                height: $constants.insets.sm,
              ),
            ]),
      ),
    );
  }

  Widget _buildInputField(BuildContext context) {
    final bloc = BlocProvider.of<OTPFormBloc>(context);
    return BlocBuilder<OTPFormBloc, OtpFormState>(
      buildWhen: (prevState, currState) =>
          currState.isError != prevState.isError,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createError(context, state.isError),
            OtpPinField(
              autoFillEnable: false,
              textInputAction: TextInputAction.done,
              fieldWidth:
                  (getSize(context).width - (7 * $constants.insets.sm)) / 6,
              onSubmit: (text) {
                bloc.add(const OtpFormEvent.submit());
              },
              onChange: (text) {
                bloc.add(OtpFormEvent.codeChanged(text));
              },

              /// to decorate your Otp_Pin_Field
              otpPinFieldStyle: OtpPinFieldStyle(
                /// border color for inactive/unfocused Otp_Pin_Field
                defaultFieldBorderColor: state.isError
                    ? $constants.palette.red
                    : $constants.palette.buttonBorder,

                activeFieldBorderColor: state.isError
                    ? $constants.palette.red
                    : $constants.palette.buttonBorder,

                textStyle: getTextTheme(context)
                    .labelLarge!
                    .copyWith(color: $constants.palette.white),
              ),
              maxLength: 6,

              /// no of pin field
              showCursor: true,
              showDefaultKeyboard: true,
              cursorColor: $constants.palette.pink,

              /// to select cursor width
              mainAxisAlignment: MainAxisAlignment.start,
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.underlinedPinBoxDecoration,
            ),
          ],
        );
      },
    );
  }

  Widget _createError(BuildContext context, bool isError) {
    return Container(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        isError ? R.strings.invalidCodeError : '',
        style: getTextTheme(context)
            .labelMedium
            ?.copyWith(color: $constants.palette.red),
      ),
    );
  }

  Widget _buildResendAction(BuildContext context) {
    final bloc = BlocProvider.of<OTPFormBloc>(context);
    final serviceBloc = BlocProvider.of<ResendVerificationCodeBloc>(context);
    return BlocBuilder<OTPFormBloc, OtpFormState>(
      buildWhen: (prevState, currState) =>
          currState.isResendButtonActive != prevState.isResendButtonActive,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (!state.isResendButtonActive)
              Countdown(
                // controller: _controller,
                seconds: 10,
                build: (_, double time) {
                  final int totalSeconds = time.ceil();
                  final int minutes = (totalSeconds ~/ 60) % 60;
                  final int seconds = totalSeconds % 60;
                  final formattedTime =
                      '0$minutes:${seconds.toString().padLeft(2, '0')}';

                  return Text(
                    formattedTime,
                    style: getTextTheme(context)
                        .labelMedium!
                        .copyWith(color: $constants.palette.white),
                  );
                },
                interval: const Duration(milliseconds: 100),
                onFinished: () {
                  bloc.add(const OtpFormEvent.activateResend());
                },
              ),
            SenpaiTextButton(
              text: R.strings.verifyCodeAction,
              onPressed: () {
                bloc.add(const OtpFormEvent.resend());
                serviceBloc.resendCodeToPhoneNumber(phone);
              },
              enabled: state.isResendButtonActive,
            )
          ],
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<OTPFormBloc>(context);
    return PrimaryButton(
        text: R.strings.continueText,
        onPressed: () {
          bloc.add(const OtpFormEvent.submit());
        });
  }
}
