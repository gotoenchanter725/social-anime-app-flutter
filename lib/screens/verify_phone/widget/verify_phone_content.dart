import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/text_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
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
                TextConstants.verifyPhoneHeading,
                style: getTextTheme(context)
                    .headlineLarge
                    ?.copyWith(color: $constants.palette.white),
                textAlign: TextAlign.left,
              ),
              Text(
                "${TextConstants.verifyPhoneInstruction} ${RouteData.of(context).pathParams.get('phone')}",
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
    return OtpPinField(
      autoFillEnable: false,
      textInputAction: TextInputAction.done,

      ///in case you want to change the action of keyboard
      /// to clear the Otp pin Controller
      onSubmit: (text) {
        print('Entered pin is $text');

        /// return the entered pin
      },
      onChange: (text) {
        print('Enter on change pin is $text');

        /// return the entered pin
      },
      onCodeChanged: (code) {
        print('onCodeChanged  is $code');
      },

      /// to decorate your Otp_Pin_Field
      otpPinFieldStyle: OtpPinFieldStyle(
        /// border color for inactive/unfocused Otp_Pin_Field
        defaultFieldBorderColor: $constants.palette.buttonBorder,

        activeFieldBorderColor: $constants.palette.buttonBorder,

        textStyle: getTextTheme(context)
            .labelLarge!
            .copyWith(color: $constants.palette.white),
      ),
      maxLength: 6,

      /// no of pin field
      showCursor: false,
      showDefaultKeyboard: true,

      /// to select cursor width
      mainAxisAlignment: MainAxisAlignment.start,
      otpPinFieldDecoration: OtpPinFieldDecoration.underlinedPinBoxDecoration,
    );
  }

  Widget _buildResendAction(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Countdown(
          // controller: _controller,
          seconds: 5,
          build: (_, double time) {
            final seconds = (time % 60).floor();
            final milliseconds = ((time - seconds) * 1000).floor();
            final formattedTime =
                '${seconds.toString().padLeft(2, '0')}:${milliseconds.toString().padLeft(2, '0')}';

            return Text(
              formattedTime,
              style: getTextTheme(context)
                  .labelMedium!
                  .copyWith(color: $constants.palette.white),
            );
          },
          interval: const Duration(milliseconds: 100),
          onFinished: () {
            // will activate the resend timer
          },
        ),
        SenpaiTextButton(
          text: TextConstants.verifyCodeAction,
          onPressed: () {},
          enabled: false,
        )
      ],
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return PrimaryButton(text: TextConstants.continueText, onPressed: () {});
  }
}
