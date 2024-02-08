import 'package:flutter/material.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/subscription_plan_model.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class PremiumItemButton extends StatelessWidget {
  final VoidCallback onPressed;
  final SubscriptionPlan subscriptionPlan;
  final SubscriptionPlan? selectedSubscription;

  const PremiumItemButton({
    super.key,
    required this.onPressed,
    required this.subscriptionPlan,
    this.selectedSubscription,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelectedPlan = selectedSubscription == subscriptionPlan;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isSelectedPlan
              ? $constants.palette.gold
              : $constants.palette.buttonBorder,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular($constants.corners.md),
          ),
          padding: const EdgeInsets.all(0)),
      child: Container(
        width: getSize(context).width * 0.26,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.md),
        ),
        padding: const EdgeInsets.all(6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                '${subscriptionPlan.superLikeCount}',
                style: getTextTheme(context).headlineMedium?.copyWith(),
              ),
            ),
            SizedBox(height: $constants.insets.xs),
            FittedBox(
              child: Text(
                R.strings.superLikes,
                style: getTextTheme(context).headlineSmall!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            SizedBox(height: $constants.insets.xs),
            FittedBox(
              child: Text(
                subscriptionPlan.price,
                style: getTextTheme(context).headlineMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
