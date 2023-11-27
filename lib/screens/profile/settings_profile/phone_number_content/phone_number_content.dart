import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/secondary_button.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PhoneNumberContent extends StatelessWidget {
  const PhoneNumberContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: TextConstants.phoneNumberTitle,
          hasLeading: true,
          onDoneTap: () {
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            bloc.add(
              OnChangeSettingsStepEvent(
                step: SettingsStep.settings,
              ),
            );
          },
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TextConstants.phoneNumberTitle,
                style: getTextTheme(context).headlineSmall,
              ),
              _buildTextInput(context),
              Padding(
                padding: EdgeInsets.only(
                  left: $constants.insets.sm,
                  top: $constants.insets.xs,
                ),
                child: Text(
                  TextConstants.confirmedPhoneDescription,
                  style: getTextTheme(context)
                      .labelMedium
                      ?.copyWith(color: $constants.palette.grey),
                ),
              ),
              SizedBox(height: $constants.insets.md),
              _buildUpdatePhoneButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextInput(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      height: $constants.insets.xxl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bloc.user.phone,
            style: getTextTheme(context).bodyMedium,
          ),
          Icon(
            Icons.done,
            color: $constants.palette.white,
            size: 14,
          ),
        ],
      ),
    );
  }

  Widget _buildUpdatePhoneButton() {
    return SecondaryButton(
      text: TextConstants.updateMyPhoneButton,
      onPressed: () {},
      hasBackgroundColor: true,
    );
  }
}
