import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/add_language_content/add_language_content.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/delete_account_content/delete_account_content.dart';
import 'package:senpai/screens/profile/settings_profile/feedback_content/feedback_content.dart';
import 'package:senpai/screens/profile/settings_profile/phone_number_content/phone_number_content.dart';
import 'package:senpai/screens/profile/settings_profile/push_notifcations_content/push_notifcations_content.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_content.dart';

import 'package:senpai/utils/constants.dart';

class SettingsProfileContent extends StatelessWidget {
  const SettingsProfileContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(height: $constants.insets.sm),
            Expanded(
              child: _buildSettingsContent(context),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSettingsContent(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);

    if (bloc.step == SettingsStep.settings) {
      return const SettingsContent();
    } else if (bloc.step == SettingsStep.deleteAccount) {
      return const DeleteAccountContent();
    } else if (bloc.step == SettingsStep.pushNotifications) {
      return const PushNotifcationsContent();
    } else if (bloc.step == SettingsStep.phoneNumber) {
      return const PhoneNumberContent();
    } else if (bloc.step == SettingsStep.language) {
      return const AddLanguageContent();
    } else if (bloc.step == SettingsStep.feedback) {
      return const FeedbackContent();
    } else {
      return const SettingsContent();
    }
  }
}
