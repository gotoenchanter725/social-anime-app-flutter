import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

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
}
