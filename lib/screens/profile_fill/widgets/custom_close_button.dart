import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';

class CustomCloseButton extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;
  final VoidCallback onTapButton;

  const CustomCloseButton({
    super.key,
    required this.borderColor,
    required this.backgroundColor,
    required this.onTapButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: $constants.insets.lg,
        height: $constants.insets.lg,
        child: OutlinedButton(
          onPressed: onTapButton,
          style: OutlinedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor,
            side: BorderSide(width: 2.0, color: borderColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                $constants.corners.lg,
              ),
            ),
            padding: EdgeInsets.zero,
          ),
          child: Center(
            child: SvgPicture.asset(
              PathConstants.closeIcon,
              width: $constants.insets.md,
              height: $constants.insets.md,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
