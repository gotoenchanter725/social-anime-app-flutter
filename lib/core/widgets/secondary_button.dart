import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const SecondaryButton(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular($constants.corners.md),
            side:
                BorderSide(color: $constants.palette.buttonBorder, width: 1.0),
          ),
          padding: const EdgeInsets.all(0)),
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.md),
        ),
        child: Text(
          text,
          style: getTextTheme(context).headlineSmall,
        ),
      ),
    );
  }
}
