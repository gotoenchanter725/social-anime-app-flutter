import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';

import 'package:senpai/core/widgets/senpai_input.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class FeedbackContent extends StatelessWidget {
  const FeedbackContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: R.strings.feedbackTitle,
          hasLeading: true,
          onTapLeading: () {
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            bloc.add(
              OnChangeSettingsStepEvent(
                step: SettingsStep.settings,
              ),
            );
          },
        ),
        SizedBox(height: $constants.insets.md),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  R.strings.feedbackTitle,
                  style: getTextTheme(context).headlineSmall,
                ),
                _buildTextInput(context),
                SizedBox(height: $constants.insets.md),
                Text(
                  R.strings.rateSenpaiTitle,
                  style: getTextTheme(context).headlineSmall,
                ),
                SizedBox(height: $constants.insets.sm),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      5,
                      (index) => _buildItemStar(context, index),
                    ),
                  ],
                ),
                SizedBox(height: $constants.insets.md),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: _buildSendFeedbackButton(context),
                  ),
                ),
                SizedBox(height: $constants.insets.sm),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItemStar(BuildContext context, int index) {
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<SettingsProfileBloc>(context);
      final isSelected = index <= bloc.feedbackStarsCount - 1;
      return GestureDetector(
        onTap: () {
          bloc.add(OnChangeFeedbackStartEvent(index: index));
        },
        child: isSelected
            ? Icon(
                Icons.star_rounded,
                size: 40,
                color: $constants.palette.pink,
              )
            : Icon(
                Icons.star_outline_rounded,
                size: 40,
                color: $constants.palette.buttonBorder,
              ),
      );
    });
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);

    return SenpaiInput(
      placeholder: R.strings.feedbackOnSenpaiHintText,
      maxLines: 4,
      controller: bloc.feedbackController,
      onTextChanged: (String feedback) {
        bloc.add(OnChangeFeedbackTextEvent(feedback: feedback));
      },
      errorText: R.strings.serverError,
      isError: false,
      isValid: false,
    );
  }

  Widget _buildSendFeedbackButton(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);

    return PrimaryButton(
      text: R.strings.sendButton,
      onPressed: () {
        print(bloc.feedbackText);
        print(bloc.feedbackStarsCount);
      },
    );
  }
}
