import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_radio_button.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/enums/settings_profile_enums.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class DeleteAccountContent extends StatelessWidget {
  const DeleteAccountContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: TextConstants.deleteAccountTitle,
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
          child: Column(
            children: [
              Text(
                TextConstants.areSureDeleteAccountTitle,
                style: getTextTheme(context).titleSmall?.copyWith(),
              ),
              SizedBox(height: $constants.insets.sm),
              _buildOptionsList(context),
            ],
          ),
        ),
        Expanded(
          child: _buildContinueButton(context),
        ),
        SizedBox(height: $constants.insets.sm),
      ],
    );
  }

  Widget _buildOptionsList(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        return Column(
          children: DeleteAccountOptions.values.map((option) {
            return SenpaiRadioButton(
              title: option.optionsString,
              value: option,
              isSelected: option == bloc.deleteAccountOptions,
              height: option == DeleteAccountOptions.hideAccount
                  ? $constants.insets.offset
                  : $constants.insets.xxl,
              backgroundColor: $constants.palette.lightBlue,
              hasBorder: false,
              onChanged: (selected) {
                bloc.add(OnChangeDeleteAccointOptionEvent(option: selected));
              },
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildContinueButton(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: PrimaryButton(
          text: TextConstants.continueText,
          onPressed: () {
            print(bloc.deleteAccountOptions);
          },
        ),
      ),
    );
  }
}
