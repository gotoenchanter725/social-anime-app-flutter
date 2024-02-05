import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/l10n/generated/app_localizations.dart';
import 'package:senpai/l10n/local_key.dart';
import 'package:senpai/screens/profile/settings_profile/bloc/settings_profile_bloc.dart';
import 'package:senpai/screens/profile/settings_profile/widgets/settings_language_item.dart';

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
          title: R.stringsOf(context).chooseLanguageTitle,
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
        BlocBuilder<ApplicationLocaleBloc, ApplicationLocaleState>(
          builder: (context, state) {
            return Column(
              children: [
                ...AppLocalizations.supportedLocales
                    .map(
                      (Locale locale) => buildLocaleRow(
                        context,
                        LocaleKeyExtension.parse(locale.languageCode),
                        state.locale!,
                      ),
                    )
                    .toList()
              ],
            );
          },
        ),
      ],
    );
  }

  Widget buildLocaleRow(
    BuildContext context,
    LocaleKey localeKey,
    Locale selectedLocale,
  ) {
    return GestureDetector(
      onTap: () {
        final bloc = BlocProvider.of<ApplicationLocaleBloc>(context);
        bloc.add(SwitchApplicationLocaleEvent(newLocale: localeKey.toLocale));
      },
      behavior: HitTestBehavior.opaque,
      child: SettingLanguageItem(
        localeKey: localeKey,
        selectedLocale: selectedLocale,
      ),
    );
  }
}
