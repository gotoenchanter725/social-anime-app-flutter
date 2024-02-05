import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/core/widgets/senpai_cupertino_switch.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/enums/settings_profile_enums.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';

class PushNotifcationsContent extends StatelessWidget {
  const PushNotifcationsContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: R.strings.pushNotificationsTitle,
          hasLeading: true,
          onDoneTap: () {
            final bloc = BlocProvider.of<SettingsProfileBloc>(context);
            print(bloc.selectedPushNotificationOptions.length);
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
          child: _buildOptionsList(context),
        ),
      ],
    );
  }

  Widget _buildOptionsList(BuildContext context) {
    final bloc = BlocProvider.of<SettingsProfileBloc>(context);
    return BlocBuilder<SettingsProfileBloc, SettingsProfileState>(
      builder: (context, state) {
        return Column(
          children: PushNotificationOptions.values.map((option) {
            return Padding(
              padding: EdgeInsets.only(top: $constants.insets.sm),
              child: SenpaiSwitchWithTitle(
                value: bloc.selectedPushNotificationOptions.contains(option),
                title: option.optionsString,
                onChanged: (isOn) {
                  bloc.add(
                    OnChangePushNotificationOptionsEvent(
                      option: option,
                      isOn: isOn,
                    ),
                  );
                },
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
