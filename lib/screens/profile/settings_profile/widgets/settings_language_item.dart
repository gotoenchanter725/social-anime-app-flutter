import 'package:flutter/material.dart';
import 'package:senpai/l10n/local_key.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingLanguageItem extends StatelessWidget {
  final Locale selectedLocale;
  final LocaleKey localeKey;

  const SettingLanguageItem({super.key, required this.localeKey, required this.selectedLocale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localeKey.nativeName,
                    style: getTextTheme(context).headlineSmall?.copyWith(color: $constants.palette.white),
                  ),
                  Text(
                    localeKey.name,
                    style: getTextTheme(context).labelMedium?.copyWith(color: $constants.palette.grey),
                  ),
                ],
              ),
              buildIconSelected(selectedLocale == localeKey.toLocale),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(thickness: 0.2),
        ],
      ),
    );
  }

  Widget buildIconSelected(bool isSelected) {
    if (!isSelected) {
      return const SizedBox.shrink();
    }

    return Icon(
      Icons.done,
      color: $constants.palette.white,
      size: 14,
    );
  }
}
