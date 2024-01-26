import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:senpai/utils/constants.dart';

class SenpaiMatchCircleButton extends StatelessWidget {
  final String? icon;
  final VoidCallback? onTap;
  final Widget? customIcon;
  final double? customPadding;
  final bool isReverceColor;
  final bool isSuperLike;

  const SenpaiMatchCircleButton({
    super.key,
    this.icon,
    required this.onTap,
    this.customIcon,
    this.customPadding,
    this.isReverceColor = false,
    this.isSuperLike = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: isReverceColor
            ? isSuperLike
                ? $constants.palette.gold
                : $constants.palette.white
            : $constants.palette.lightBlue,
        padding: const EdgeInsets.all(0),
      ),
      child: Container(
        width: 64,
        height: 64,
        padding: EdgeInsetsDirectional.all(customPadding ?? 20),
        child: _buildIcon(),
      ),
    );
  }

  Widget _buildIcon() {
    if (icon != null) {
      return SvgPicture.asset(
        icon!,
        width: $constants.insets.md,
        height: $constants.insets.md,
        colorFilter: ColorFilter.mode(
          isReverceColor
              ? $constants.palette.lightBlue
              : $constants.palette.white,
          BlendMode.srcIn,
        ),
      );
    }

    if (customIcon != null) {
      return customIcon!;
    }
    return const SizedBox();
  }
}
