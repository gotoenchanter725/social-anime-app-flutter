import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfileListTileButton extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback? onTap;
  final bool hasBorder;

  const ProfileListTileButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.hasBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: $constants.insets.xxl,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.lg),
        shape: BoxShape.rectangle,
        color: $constants.palette.lightBlue,
        border: Border.all(
          color:
              hasBorder ? $constants.palette.red : $constants.palette.lightBlue,
          width: 1.0,
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: $constants.insets.xs,
        ),
        onTap: onTap,
        leading: _buildLeading(),
        title: Text(
          title,
          style: getTextTheme(context).bodyMedium,
        ),
        trailing: onTap != null
            ? Icon(
                hasBorder ? Icons.error : Icons.chevron_right,
                color: $constants.palette.white,
              )
            : null,
      ),
    );
  }

  Widget _buildLeading() {
    return Container(
      padding: EdgeInsets.all($constants.corners.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.insets.xs),
        shape: BoxShape.rectangle,
        color: $constants.palette.buttonBorder,
      ),
      child: SvgPicture.asset(
        icon,
        width: $constants.insets.sm,
        height: $constants.insets.sm,
        fit: BoxFit.contain,
      ),
    );
  }
}
