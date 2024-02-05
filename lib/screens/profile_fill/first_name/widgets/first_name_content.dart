import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/first_name/bloc/first_name_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';

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
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  _buildHeader(context),
                  _buildTextInput(context),
                ],
              ),
            ),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildSubmitButton(context),
          ),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final bloc = BlocProvider.of<ProfileFillBloc>(context);
    return HeaderSimpleField(
      title: R.strings.yourFirstName,
      description: R.strings.yourFirstNameDescription,
      iconPath: PathConstants.closeIcon,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.welcome,
          ),
        );
      },
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<FirstNameBloc>(context);
    return BlocBuilder<FirstNameBloc, FirstNameState>(
      builder: (context, state) {
        return SenpaiInput(
          placeholder: R.strings.firstNameText,
          controller: bloc.firstNameController,
          onTextChanged: (String firstName) {
            bloc.add(OnFirstNameChangedEvent(firstName: firstName));
          },
          errorText: R.strings.serverError,
          isError: state is ErrorState ? state.isEnabled : false,
          isValid: state is ValidState
              ? true
              : bloc.firstNameController.text.isNotEmpty,
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<FirstNameBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return BlocListener<FirstNameBloc, FirstNameState>(
      listenWhen: (_, currState) => currState is FirstNameSucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(OnFirstNameSaveEvent(firstName: bloc.firstName));
      },
      child: PrimaryButton(
        text: R.strings.nextText,
        onPressed: () async {
          bloc.add(NextTappedEvent());
        },
      ),
    );
  }
}
