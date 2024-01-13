import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

import '../../../routes/app_router.dart';

class ProfilePremiumWidget extends StatelessWidget {
  final bool isCenterContent;

  const ProfilePremiumWidget({
    super.key,
    this.isCenterContent = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: $constants.insets.sm),
      padding: EdgeInsets.all($constants.insets.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.lg),
        shape: BoxShape.rectangle,
        color: isCenterContent ? null : $constants.palette.lightBlue,
      ),
      child: Column(
        mainAxisAlignment: isCenterContent
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          _buildPremiumTitle(context),
          SizedBox(height: $constants.insets.sm),
          _buildPremiumText(context, TextConstants.premiumHigherText),
          SizedBox(height: $constants.insets.sm),
          _buildPremiumText(context, TextConstants.premiumSuperLikesText),
          SizedBox(height: $constants.insets.sm),
          _buildPremiumText(context, TextConstants.premiumAbilityAnimesText),
          SizedBox(height: $constants.insets.md),
          if (!isCenterContent)
            PrimaryButton(
              text: TextConstants.premiumUpgradeText,
              onPressed: () async{
                print('Premium');
                await context.router.push(
                  const PremiumRoute(),
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildPremiumTitle(BuildContext context) {
    if (isCenterContent) {
      return Column(
        children: [
          _buildCrownIcon(
            width: $constants.insets.lg,
            height: $constants.insets.lg,
          ),
          SizedBox(height: $constants.insets.xs),
          Text(
            TextConstants.senpaiPremiumTitle,
            style: getTextTheme(context).headlineLarge?.copyWith(),
          ),
          SizedBox(height: $constants.insets.xs),
        ],
      );
    }
    return Row(
      children: [
        Text(
          TextConstants.senpaiPremiumTitle,
          style: getTextTheme(context).headlineMedium?.copyWith(
                color: $constants.palette.white,
                fontWeight: FontWeight.w500,
              ),
        ),
        SizedBox(width: $constants.insets.xs),
        _buildCrownIcon(
          width: $constants.insets.md,
          height: $constants.insets.md,
        ),
      ],
    );
  }

  Widget _buildCrownIcon({required double width, required double height}) {
    return SvgPicture.asset(
      PathConstants.crownIcon,
      width: width,
      height: height,
      fit: BoxFit.contain,
      colorFilter: ColorFilter.mode(
        $constants.palette.yellow,
        BlendMode.srcIn,
      ),
    );
  }

  Widget _buildPremiumText(BuildContext context, String text) {
    return Row(
      mainAxisAlignment:
          isCenterContent ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        SvgPicture.asset(
          PathConstants.shineHeartIcon,
          width: $constants.insets.md,
          height: $constants.insets.md,
          fit: BoxFit.contain,
        ),
        SizedBox(width: $constants.insets.xs),
        Flexible(
          child: Text(
            text,
            style: getTextTheme(context)
                .bodyMedium
                ?.copyWith(color: $constants.palette.white),
          ),
        ),
      ],
    );
  }
}
