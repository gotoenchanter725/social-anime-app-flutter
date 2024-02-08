import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/phone_input.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/core/auth/blocs/create_user_bloc.dart';
import 'package:senpai/screens/signup/bloc/sign_up_form/sign_up_form_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SignupContent extends StatelessWidget {
  const SignupContent({super.key, required this.isExistingUser});

  final bool isExistingUser;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Stack(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  // width: MediaQuery.of(context).size.width,
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    R.strings.hello,
                    style: getTextTheme(context)
                        .headlineLarge
                        ?.copyWith(color: $constants.palette.white),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    R.strings.createUserPrompt,
                    style: getTextTheme(context).headlineLarge?.copyWith(
                          color: $constants.palette.white,
                        ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: $constants.insets.lg,
                  ),
                  _buildTextInput(context),
                  SizedBox(
                    height: $constants.insets.sm,
                  ),
                  Text(
                    R.strings.createUserInstructions,
                    style: getTextTheme(context).labelMedium?.copyWith(
                          color: $constants.palette.grey2,
                        ),
                    textAlign: TextAlign.left,
                  ),
                  ..._buildTermsAndConditions(context),
                  SizedBox(
                    height: $constants.insets.lg,
                  ),
                  // Expanded(
                  //   child: Align(
                  //     alignment: Alignment.bottomCenter,
                  //     child: _buildSubmitButton(context),
                  //   ),
                  // ),
                  SizedBox(
                    height: $constants.insets.lg,
                  ),
              ],
            ),
                )),
            Container(
              margin: EdgeInsets.only(bottom: $constants.insets.sm),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _buildSubmitButton(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTermsAndConditions(BuildContext context) {
    if (isExistingUser) {
      return [];
    }
    final bloc = BlocProvider.of<SignUpFormBloc>(context);
    return [
      SizedBox(
        height: $constants.insets.sm,
      ),
      BlocBuilder<SignUpFormBloc, SignUpFormState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  checkColor: $constants.palette.white,
                  fillColor:
                      MaterialStateProperty.resolveWith(getCheckBoxColor),
                  value: bloc.isAccepted,
                  onChanged: bloc.onTermsAndConditionsTapped,
                  title: Text(
                    R.strings.termsAndConditions,
                    style: getTextTheme(context).labelMedium?.copyWith(
                          color: $constants.palette.white,
                        ),
                    textAlign: TextAlign.left,
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              )
            ],
          );
        },
      )
    ];
  }

  Widget _buildSubmitButton(BuildContext context) {
    final formBloc = BlocProvider.of<SignUpFormBloc>(context);
    final serviceBloc = BlocProvider.of<CreateUserBloc>(context);
    final existingUserServiceBloc =
        BlocProvider.of<ResendVerificationCodeBloc>(context);

    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      builder: (context, state) {
        return PrimaryButton(
          text: R.strings.continueText,
          onPressed: () {
            if (!formBloc.isAccepted && !isExistingUser) {
              return;
            }
            if (isValidPhoneNumber(formBloc.phoneController.text)) {
              final String formattedPhone = formBloc.phoneNumber.phoneNumber!;
              if (isExistingUser) {
                existingUserServiceBloc.resendCodeToPhoneNumber(formattedPhone);
              } else {
                serviceBloc.createUserWithPhoneNumber(formattedPhone);
              }
            }
          },
        );
      },
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<SignUpFormBloc>(context);
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      buildWhen: (_, currState) => currState is ErrorState,
      builder: (context, state) {
        return SenpaiPhoneInput(
          placeholder: '000-000-0000',
          controller: bloc.phoneController,
          onTextChanged: (PhoneNumber phoneNumber) {
            bloc.add(OnTextChangedEvent(phoneNumber: phoneNumber));
          },
          errorText: R.strings.invalidPhoneError,
          isError: state is ErrorState ? state.isEnabled : false,
          isValid: state is ValidState
              ? true
              : isValidPhoneNumber(bloc.phoneController.text),
        );
      },
    );
  }
}
