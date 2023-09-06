import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/icon_button.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class HeaderSimpleField extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onTapBackButton;
  final String? iconPath;

  const HeaderSimpleField({
    super.key,
    required this.title,
    required this.description,
    required this.onTapBackButton,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBackButton(context),
        Text(
          title,
          style: getTextTheme(context)
              .headlineLarge
              ?.copyWith(color: $constants.palette.white),
          textAlign: TextAlign.left,
        ),
        Text(
          description,
          style: getTextTheme(context).bodySmall?.copyWith(
                color: $constants.palette.grey,
                letterSpacing: 0,
              ),
          textAlign: TextAlign.left,
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
        top: $constants.insets.xl,
        bottom: $constants.insets.lg,
      ),
      child: SenpaiIconButton(
        onPressed: onTapBackButton,
        iconPath: iconPath ?? PathConstants.backIcon,
      ),
    );
  }
}
