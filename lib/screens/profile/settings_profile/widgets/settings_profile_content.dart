import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/profile/settings_profile/add_language_content/add_language_content.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/feedback_content/feedback_content.dart';
import 'package:senpai/screens/profile/settings_profile/phone_number_content/phone_number_content.dart';
import 'package:senpai/screens/profile/settings_profile/push_notifcations_content/push_notifcations_content.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_content.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingsProfileContent extends StatelessWidget {
  const SettingsProfileContent({
    super.key,
  });

  Future<void> _openLoadingDialog(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: $constants.palette.appBackground,
        surfaceTintColor: $constants.palette.appBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular($constants.corners.sm),
        ),
        title: CupertinoActivityIndicator(radius: $constants.insets.sm),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              R.strings.loggingOutTitle,
              style: getTextTheme(context).headlineSmall,
            ),
            Text(
              R.strings.pleaseWaitText,
              style: getTextTheme(context).titleSmall,
            ),
          ],
        ),
      ),
    ).timeout(
      $constants.times.slow,
      onTimeout: () {
        if (context.mounted) Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsProfileBloc, SettingsProfileState>(
      listener: (context, state) async {
        if (state is LogoutLoadingState) {
          _openLoadingDialog(context);
        }
        if (state is LogoutSucssesfulState) {
          await context.router.replaceAll([const EntryRoute()]);
        }
      },
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
