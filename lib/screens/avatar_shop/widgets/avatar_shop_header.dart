import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:senpai/l10n/resources.dart';

class AvatarShopHeaderWidget extends StatelessWidget {
  const AvatarShopHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            PathConstants.launcher,
            width: $constants.insets.lg,
            height: $constants.insets.lg,
            fit: BoxFit.contain,
          ),
          Text(
            R.strings.avatarSkinShop,
            style: getTextTheme(context).titleMedium!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
          ),
          SvgPicture.asset(
            PathConstants.crownIcon,
            width: $constants.insets.lg,
            height: $constants.insets.lg,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
