import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/phone_input.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
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
                _buildTextInput(context),
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

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<SignUpFormBloc>(context);
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      buildWhen: (_, currState) => currState is ErrorState,
      builder: (context, state) {
        return SenpaiPhoneInput(
          placeholder: '000-000-0000',
          controller: bloc.phoneController,
          onTextChanged: () {
            bloc.add(OnTextChangedEvent());
          },
          errorText: TextConstants.invalidPhoneError,
          isError: state is ErrorState ? state.isEnabled : false,
        );
      },
    );
  }
}
