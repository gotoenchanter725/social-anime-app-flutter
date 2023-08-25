import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/phone_input.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/signup/bloc/create_user_bloc.dart';
import 'package:senpai/screens/signup/bloc/sign_up_form/sign_up_form_bloc.dart';
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
                SizedBox(
                  height: $constants.insets.lg,
                ),
                _buildTextInput(context),
                SizedBox(
                  height: $constants.insets.sm,
                ),
                Text(
                  TextConstants.createUserInstructions,
                  style: getTextTheme(context).labelMedium?.copyWith(
                        color: $constants.palette.grey2,
                      ),
                  textAlign: TextAlign.left,
                ),
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
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final formBloc = BlocProvider.of<SignUpFormBloc>(context);
    final serviceBloc = BlocProvider.of<CreateUserBloc>(context);

    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      builder: (context, state) {
        return PrimaryButton(
          text: TextConstants.continueText,
          onPressed: () {
            if (isValidPhoneNumber(formBloc.phoneController.text)) {
              final String formattedPhone = formBloc.phoneNumber.phoneNumber!;
              serviceBloc.createUserWithPhoneNumber(formattedPhone);
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
          errorText: TextConstants.invalidPhoneError,
          isError: state is ErrorState ? state.isEnabled : false,
          isValid: state is ValidState
              ? true
              : isValidPhoneNumber(bloc.phoneController.text),
        );
      },
    );
  }
}
