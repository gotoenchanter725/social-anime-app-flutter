import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/utils/constants.dart';

class SenpaiIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;
  final Color? borderColor;

  const SenpaiIconButton({
    super.key,
    required this.onPressed,
    required this.iconPath,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          elevation: 0,
          side: BorderSide(
            width: 1.0,
            color: borderColor ?? $constants.palette.buttonBorder,
          ), // Border styling
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              $constants.corners.sm,
            ), // Button border radius
          ),
          padding: const EdgeInsets.all(0),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            width: 32,
            height: 32,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
