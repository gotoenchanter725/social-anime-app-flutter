import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/utils/constants.dart';

class AddLanguageContent extends StatelessWidget {
  const AddLanguageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileAppBar(
          title: TextConstants.chooseLanguageTitle,
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
        //TODO: Vika add content
      ],
    );
  }
}
