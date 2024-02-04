import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/premium_screen/widgets/premium_item_button.dart';

import '../../../core/widgets/primary_button.dart';
import '../../../data/path_constants.dart';
import '../../../utils/constants.dart';
import '../../../utils/methods/utils.dart';
import '../bloc/purchase_bloc.dart';

void openPremiumPurchaseDialog(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (_) {
      return const Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: PurchaseDialog(),
      );
    },
  );
}

class PurchaseDialog extends StatefulWidget {
  const PurchaseDialog({Key? key}) : super(key: key);

  @override
  State<PurchaseDialog> createState() => _PurchaseDialogState();
}

class _PurchaseDialogState extends State<PurchaseDialog> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PurchaseBloc(),
      child: BlocListener<PurchaseBloc, PurchaseState>(
        listenWhen: (_, currState) => currState is UpdatePlanState,
        listener: (context, state) {},
        child:
            BlocBuilder<PurchaseBloc, PurchaseState>(builder: (context, state) {
          final bloc = BlocProvider.of<PurchaseBloc>(context);

          if (bloc.selectedSubscription == null) {
            bloc.add(OnUpdatePlanEvent(
                subscriptionPlan: bloc.subscriptionPlanList[0]));
            return const SizedBox.shrink();
          }

          return Container(
            margin: EdgeInsets.symmetric(
              vertical: $constants.corners.sm,
              horizontal: $constants.insets.sm,
            ),
            padding: EdgeInsets.symmetric(
              vertical: $constants.insets.md,
              horizontal: $constants.insets.sm,
            ),
            decoration: BoxDecoration(
              color: $constants.palette.appBackground,
              borderRadius: BorderRadius.circular($constants.insets.sm),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCrownIcon(
                  width: $constants.insets.lg,
                  height: $constants.insets.lg,
                ),
                SizedBox(height: $constants.insets.xs),
                AutoSizeText(
                  R.strings.outOfSuperLikes,
                  style: getTextTheme(context).headlineLarge?.copyWith(),
                  maxLines: 1,
                ),
                SizedBox(height: $constants.insets.xs),
                Text(
                  R.strings.doNotLoseDiamonds,
                  style: getTextTheme(context).headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: $constants.insets.md),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (var i = 0; i < bloc.subscriptionPlanList.length; i++)
                      PremiumItemButton(
                        onPressed: () {
                          bloc.add(OnUpdatePlanEvent(
                            subscriptionPlan: bloc.subscriptionPlanList[i],
                          ));
                        },
                        subscriptionPlan: bloc.subscriptionPlanList[i],
                        selectedSubscription: bloc.selectedSubscription,
                      ),
                  ],
                ),
                SizedBox(height: $constants.insets.xl),
                _buildBuyPremiumButton(
                    context, () {}, bloc.selectedSubscription!.price),
                SizedBox(height: $constants.insets.xs),
                _noThanksButton(context),
              ],
            ),
          );
        }),
      ),
    );
  }
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

Widget _buildBuyPremiumButton(
    BuildContext context, Function() onPressed, String price) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: $constants.insets.md,
      vertical: $constants.insets.sm,
    ),
    child: PrimaryButton(
      text: '${R.strings.dialogBuyButton} $price',
      onPressed: onPressed,
      backgroundColor: $constants.palette.gold,
    ),
  );
}

Widget _noThanksButton(BuildContext context) {
  return TextButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: Text(
      R.strings.noThanks.toUpperCase(),
      style: getTextTheme(context).bodySmall,
    ),
  );
}
