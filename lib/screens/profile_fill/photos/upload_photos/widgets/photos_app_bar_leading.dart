import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PhotosAppBarLeading extends StatelessWidget {
  final VoidCallback onTapBack;
  const PhotosAppBarLeading({
    super.key,
    required this.onTapBack,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapBack,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: $constants.insets.sm),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              PathConstants.backIcon,
              width: $constants.insets.md,
              height: $constants.insets.md,
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
            ),
            Text(
              R.strings.backText,
              style: getTextTheme(context).titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
