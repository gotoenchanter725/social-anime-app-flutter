import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/icon_button.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/senpai_input.dart';
import '../../../../data/path_constants.dart';
import '../../../../data/text_constants.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/methods/utils.dart';
import '../../bloc/profile_fill_bloc.dart';
import '../bloc/first_name_bloc.dart';

class FirstNameContent extends StatelessWidget {
  const FirstNameContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildBackButton(context),
          Text(
            TextConstants.yourFirstName,
            style: getTextTheme(context)
                .headlineLarge
                ?.copyWith(color: $constants.palette.white),
            textAlign: TextAlign.left,
          ),
          Text(
            TextConstants.yourFirstNameDescription,
            style: getTextTheme(context).bodySmall?.copyWith(
                  color: $constants.palette.grey,
                  letterSpacing: 0,
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
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: $constants.insets.xl,
        bottom: $constants.insets.lg,
      ),
      child: SenpaiIconButton(
        onPressed: () {
          final bloc = BlocProvider.of<ProfileFillBloc>(context);
          bloc.add(
            OnChangeStepEvent(
              step: ProfileFillStep.welcome,
            ),
          );
        },
        iconPath: PathConstants.closeIcon,
      ),
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<FirstNameBloc>(context);
    return BlocBuilder<FirstNameBloc, FirstNameState>(
      builder: (context, state) {
        return SenpaiInput(
          placeholder: TextConstants.firstNameText,
          controller: bloc.firstNameController,
          onTextChanged: (String firstName) {
            bloc.add(OnFirstNameChangedEvent(firstName: firstName));
          },
          errorText: TextConstants.serverError,
          isError: state is ErrorState ? state.isEnabled : false,
          isValid: state is ValidState
              ? true
              : bloc.firstNameController.text.isNotEmpty,
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return BlocBuilder<FirstNameBloc, FirstNameState>(
      builder: (context, state) {
        return PrimaryButton(
          text: TextConstants.nextText,
          onPressed: () {},
        );
      },
    );
  }
}
