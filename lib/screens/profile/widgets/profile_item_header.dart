import 'package:flutter/material.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfileItemHeader extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isEmptyContent;
  final String? titleButton;

  const ProfileItemHeader({
    super.key,
    required this.title,
    required this.onTap,
    this.isEmptyContent = false,
    this.titleButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getTextTheme(context)
                .bodyMedium
                ?.copyWith(color: $constants.palette.white),
          ),
          Row(
            children: [
              if (isEmptyContent)
                Text(
                  titleButton ?? R.strings.addTitle,
                  style: getTextTheme(context)
                      .bodySmall
                      ?.copyWith(letterSpacing: 0),
                ),
              Icon(
                Icons.chevron_right,
                color: $constants.palette.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
