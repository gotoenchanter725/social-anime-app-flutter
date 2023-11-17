import 'package:flutter/material.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PhotosButton extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback onPressed;

  const PhotosButton({
    super.key,
    required this.title,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: $constants.palette.buttonBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular($constants.corners.md),
          side: BorderSide(color: $constants.palette.buttonBorder, width: 1.0),
        ),
        padding: EdgeInsets.only(
          top: $constants.corners.xl,
          left: $constants.insets.md,
          bottom: $constants.corners.xl,
        ),
      ),
      child: _buildText(context),
    );
  }

  Widget _buildText(BuildContext context) {
    return Container(
      width: double.maxFinite,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.md),
      ),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: getTextTheme(context).titleSmall?.copyWith(
                color: $constants.palette.grey,
              ),
          children: [
            TextSpan(text: title),
            const TextSpan(text: '\n'),
            TextSpan(
              text: text,
              style: getTextTheme(context).headlineMedium!.copyWith(
                    color: $constants.palette.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
