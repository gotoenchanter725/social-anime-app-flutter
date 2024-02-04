import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class SettingsPremiumWidget extends StatelessWidget {
  const SettingsPremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.router.push(
          const PremiumRoute(),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: $constants.insets.md),
        padding: EdgeInsets.symmetric(vertical: $constants.insets.sm),
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: $constants.palette.buttonGradient,
          borderRadius: BorderRadius.circular($constants.corners.lg),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  R.strings.senpaiPremiumTitle,
                  style: getTextTheme(context)
                      .headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: $constants.insets.xs),
                SvgPicture.asset(
                  PathConstants.crownIcon,
                  width: $constants.insets.md,
                  height: $constants.insets.md,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(height: $constants.insets.xxs),
            Text(
              R.strings.senpaiPremiumDescription,
              textAlign: TextAlign.center,
              style: getTextTheme(context).bodySmall?.copyWith(
                    letterSpacing: 0,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
