import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class HeaderSimpleField extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTapBackButton;
  final String? iconPath;
  final VoidCallback? onTapSkipkButton;
  final Color? backBorderColor;
  final bool isCenterTitle;

  const HeaderSimpleField({
    super.key,
    required this.title,
    required this.description,
    this.onTapBackButton,
    this.iconPath,
    this.onTapSkipkButton,
    this.backBorderColor,
    this.isCenterTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isCenterTitle ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (onTapBackButton != null) _buildBackButton(context),
            if (onTapSkipkButton != null) _buildSkipButton(context),
          ],
        ),
        Text(
          title,
          style: getTextTheme(context)
              .headlineLarge
              ?.copyWith(color: $constants.palette.white),
          textAlign: isCenterTitle ? TextAlign.center : TextAlign.left,
        ),
        Text(
          description,
          style: getTextTheme(context).bodySmall?.copyWith(
                color: $constants.palette.grey,
                letterSpacing: 0,
              ),
          textAlign: isCenterTitle ? TextAlign.center : TextAlign.left,
        ),
        SizedBox(
          height: $constants.insets.lg,
        ),
      ],
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: $constants.insets.md,
        bottom: $constants.insets.lg,
      ),
      child: SenpaiIconButton(
        onPressed: onTapBackButton!,
        iconPath: iconPath ?? PathConstants.backIcon,
        borderColor: backBorderColor,
      ),
    );
  }

  Widget _buildSkipButton(BuildContext context) {
    return TextButton(
      onPressed: onTapSkipkButton,
      child: Text(
        R.strings.skipStep,
        style: getTextTheme(context)
            .labelMedium!
            .copyWith(color: $constants.palette.white, fontSize: 14),
      ),
    );
  }
}
