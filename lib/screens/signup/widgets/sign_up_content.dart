import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SignupContent extends StatelessWidget {
  const SignupContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 42,
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
                const SizedBox(
                  height: 32,
                ),
                Text(
                  TextConstants.hello,
                  style: getTextTheme(context)
                      .headlineLarge
                      ?.copyWith(color: $constants.palette.white),
                  textAlign: TextAlign.left,
                ),
                Text(
                  TextConstants.createUserPrompt,
                  style: getTextTheme(context).headlineLarge?.copyWith(
                        color: $constants.palette.white,
                      ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular($constants.corners.md),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                              color: $constants.palette.buttonBorder,
                              width: 1.0),
                          // Separator
                        ),
                        child: InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber phoneNumber) {},
                          inputBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide.none, // No border for inner input
                          ),
                          hintText: '000-000-0000',
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          initialValue: PhoneNumber(isoCode: 'US'),
                          textStyle: getTextTheme(context)
                              .bodyMedium
                              ?.copyWith(color: $constants.palette.white),
                          selectorTextStyle: getTextTheme(context)
                              .bodyMedium
                              ?.copyWith(color: $constants.palette.white),
                          searchBoxDecoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: $constants.palette.buttonBorder),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: PrimaryButton(
                    text: TextConstants.continueText,
                    onPressed: () {},
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
