import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/premium_screen/widgets/profile_premium_widget.dart';
import 'package:senpai/screens/profile_fill/widgets/custom_close_button.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PremiumContent extends StatelessWidget {
  const PremiumContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: $constants.palette.lightBlue,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              PathConstants.premiumImage,
              width: getSize(context).width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: $constants.insets.offset,
            right: $constants.insets.sm,
            child: CustomCloseButton(
              borderColor: Colors.transparent,
              backgroundColor: $constants.palette.white.withOpacity(0.3),
              onTapButton: () => context.router.pop(),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: getSize(context).width,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  const ProfilePremiumWidget(
                    isCenterContent: true,
                  ),
                  _buildPremiumButton(context),
                  SizedBox(height: $constants.insets.lg),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: $constants.insets.md,
        vertical: $constants.insets.sm,
      ),
      child: PrimaryButton(
        text: R.strings.premiumUpgradeText,
        onPressed: () {
          print('Premium');
        },
      ),
    );
  }

  //24.01 Herbert Joseph: Let's remove/hide Restore Purchases.
  // Widget _buildRestorePurchasesButton(BuildContext context) {
  //   return TextButton(
  //     onPressed: () {
  //       print('Restore purchases');
  //     },
  //     child: Text(
  //       R.strings.restorePurchasesButton,
  //       style: getTextTheme(context).titleSmall?.copyWith(),
  //     ),
  //   );
  // }
}
