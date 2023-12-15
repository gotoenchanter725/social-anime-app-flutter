import 'package:flutter/material.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditProfileListTileButton extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback onTap;
  final bool hasBorder;

  const EditProfileListTileButton({
    super.key,
    required this.title,
    required this.text,
    required this.onTap,
    this.hasBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: $constants.insets.xxl,
      decoration: profileBoxDecoration().copyWith(
        border: Border.all(
          color: hasBorder
              ? $constants.palette.white
              : $constants.palette.lightBlue,
          width: 1.0,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
        ),
        onTap: onTap,
        leading: Text(
          title,
          style: getTextTheme(context)
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        title: Text(
          text,
          style: getTextTheme(context)
              .bodyMedium!
              .copyWith(color: $constants.palette.grey),
          maxLines: 1,
          textAlign: TextAlign.end,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
