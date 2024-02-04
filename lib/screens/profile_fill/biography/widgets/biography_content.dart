import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_input.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile_fill/biography/bloc/biography_bloc.dart';
import 'package:senpai/screens/profile_fill/bloc/profile_fill_bloc.dart';
import 'package:senpai/screens/profile_fill/widgets/header_simple_field.dart';
import 'package:senpai/utils/constants.dart';

class BiographyContent extends StatelessWidget {
  const BiographyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
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
      title: R.strings.yourStoryText,
      description: R.strings.yourStoryDescription,
      onTapBackButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.occupation,
          ),
        );
      },
      onTapSkipkButton: () {
        bloc.add(
          OnChangeStepEvent(
            step: ProfileFillStep.photos,
          ),
        );
      },
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<BiographyBloc>(context);
    return BlocBuilder<BiographyBloc, BiographyState>(
      builder: (context, state) {
        return SenpaiInput(
          placeholder: R.strings.yourStoryDescription,
          maxLines: 4,
          controller: bloc.biographyController,
          onTextChanged: (String biography) {
            bloc.add(OnBiographyChangedEvent(biography: biography));
          },
          errorText: R.strings.serverError,
          isError: state is ErrorState ? state.isEnabled : false,
          isValid: state is ValidState
              ? true
              : bloc.biographyController.text.isNotEmpty,
        );
      },
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    final bloc = BlocProvider.of<BiographyBloc>(context);
    final blocProfileFill = BlocProvider.of<ProfileFillBloc>(context);

    return BlocListener<BiographyBloc, BiographyState>(
      listenWhen: (_, currState) => currState is BiographySucssesfulState,
      listener: (context, state) {
        blocProfileFill.add(
          OnBiographySaveEvent(biography: bloc.biographyText),
        );
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
