import 'package:flutter/material.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SenpaiTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool enabled;

  const SenpaiTextButton({
    super.key,
    required this.text,
    this.onPressed,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final disabledColor =
        $constants.palette.disabledTextButton; // Color when button is disabled
    final enabledColor =
        $constants.palette.white; // Color when button is enabled

    final textStyle = getTextTheme(context).labelMedium!.copyWith(
          decoration: enabled ? TextDecoration.underline : TextDecoration.none,
          color: enabled ? enabledColor : disabledColor,
        );

    return TextButton(
      onPressed: enabled ? onPressed : null,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
