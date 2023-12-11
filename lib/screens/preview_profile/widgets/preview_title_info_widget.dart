import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PreviewTitleInfoWidget extends StatelessWidget {
  final String title;
  final String? text;
  final String icon;

  const PreviewTitleInfoWidget({
    super.key,
    required this.title,
    required this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          icon,
          width: $constants.insets.md,
          height: $constants.insets.md,
        ),
        SizedBox(width: $constants.insets.xs),
        Flexible(
          child: RichText(
            text: TextSpan(
              style: getTextTheme(context)
                  .bodyMedium
                  ?.copyWith(color: $constants.palette.white),
              children: [
                TextSpan(text: title),
                if (text != null)
                  TextSpan(
                    text: text,
                    style: getTextTheme(context)
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
