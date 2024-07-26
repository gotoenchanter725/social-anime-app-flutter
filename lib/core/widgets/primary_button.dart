import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final LinearGradient? buttonGradient;

  const PrimaryButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.backgroundColor,
      this.buttonGradient});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular($constants.corners.md),
          ),
          padding: const EdgeInsets.all(0)),
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.md),
          gradient: backgroundColor == null
              ? (buttonGradient == null
                  ? $constants.palette.buttonGradient
                  : buttonGradient!)
              : null,
          color: backgroundColor,
        ),
        child: Text(
          text,
          style: getTextTheme(context).headlineSmall,
        ),
      ),
    );
  }
}
