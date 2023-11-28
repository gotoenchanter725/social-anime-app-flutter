import 'package:flutter/material.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/preview_profile/widgets/senpai_match_circle_button.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

const _heightBottomButton = 100.0;

class PreviewBottomButtons extends StatelessWidget {
  final VoidCallback? onTapClose;
  final VoidCallback? onTapLike;

  const PreviewBottomButtons({
    super.key,
    required this.onTapClose,
    required this.onTapLike,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _heightBottomButton,
      width: getSize(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.md),
        gradient: $constants.palette.matchGradient,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (onTapClose != null)
            SenpaiMatchCircleButton(
              icon: PathConstants.closeIcon,
              onTap: onTapClose!,
              customPadding: $constants.insets.xs,
            ),
          SizedBox(width: $constants.corners.xxl),
          if (onTapLike != null)
            SenpaiMatchCircleButton(
              icon: PathConstants.matchIcon,
              onTap: onTapLike!,
            ),
        ],
      ),
    );
  }
}
