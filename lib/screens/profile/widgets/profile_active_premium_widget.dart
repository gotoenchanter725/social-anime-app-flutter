import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

class ProfileActivePremiumWidget extends StatelessWidget {
  final DateTime nextDate;

  const ProfileActivePremiumWidget({
    super.key,
    required this.nextDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: $constants.insets.sm),
      padding: EdgeInsets.all($constants.insets.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.lg),
        shape: BoxShape.rectangle,
        color: $constants.palette.lightBlue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPremiumTitle(context),
          _buildPremiumDescription(context),
          SizedBox(height: $constants.insets.sm),
          Divider(color: $constants.palette.grey),
          SizedBox(height: $constants.insets.sm),
          AutoSizeText(
            R.strings.whatYouGetText,
            style: getTextTheme(context).headlineSmall,
            maxLines: 1,
          ),
          _buildPremiumText(context, R.strings.unlimitedVideoCalls),
          SizedBox(height: $constants.insets.sm),
          _buildPremiumText(context, R.strings.premiumAvatars),
          SizedBox(height: $constants.insets.sm),
          _buildPremiumText(context, R.strings.higherVisibility),
          SizedBox(height: $constants.insets.sm),
          _buildPremiumText(context, R.strings.premiumAbilityAnimesText),
          SizedBox(height: $constants.insets.md),
          _buildManageLink(context)
        ],
      ),
    );
  }

  Widget _buildPremiumTitle(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AutoSizeText(
            R.strings.senpaiPremiumIsActivated,
            style: getTextTheme(context).headlineMedium?.copyWith(
                  color: $constants.palette.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
            maxLines: 1,
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

  Widget _buildPremiumDescription(BuildContext context) {
    final dateText = DateFormat.yMMMMd().format(nextDate);
    return AutoSizeText(
      "${R.strings.nextPaymentText} $dateText",
      style: getTextTheme(context).labelMedium?.copyWith(
            color: $constants.palette.white.withOpacity(0.6),
          ),
      maxLines: 1,
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
      mainAxisAlignment: MainAxisAlignment.start,
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

  Widget _buildManageLink(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      InkWell(
          child: Text(R.strings.manageSubscriptionTitle,
              style: getTextTheme(context)
                  .bodyMedium
                  ?.copyWith(color: $constants.palette.grey)),
          onTap: () => {
                if (Platform.isIOS)
                  {
                    launchUrl(
                        Uri.parse(
                            "https://apps.apple.com/account/subscriptions"),
                        mode: LaunchMode.externalApplication)
                  }
                else
                  {
                    launchUrl(
                        Uri.parse(
                            "https://play.google.com/store/account/subscriptions?sku=senpaipremium&package=makeshift.software.inc.senpai"),
                        mode: LaunchMode.externalApplication)
                  }
              })
    ]);
  }
}
