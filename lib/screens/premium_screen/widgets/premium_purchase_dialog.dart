import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/models/subscription_plan_model.dart';

import '../../../core/widgets/primary_button.dart';
import '../../../data/path_constants.dart';
import '../../../data/text_constants.dart';
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
        listener: (context, state) {},
        child:
            BlocBuilder<PurchaseBloc, PurchaseState>(builder: (context, state) {
          final bloc = BlocProvider.of<PurchaseBloc>(context);

          if (bloc.selectedSubscription == null) {
            bloc.add(OnUpdatePlanEvent(
                subscriptionPlan: bloc.subscriptionPlanList[0]));
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
                Text(
                  TextConstants.outOfSuperLikes,
                  style: getTextTheme(context).headlineLarge?.copyWith(),
                ),
                SizedBox(height: $constants.insets.xs),
                Text(
                  TextConstants.doNotLoseDiamonds,
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
                      _buttonContainer(
                        context: context,
                        onPressed: () {
                          bloc.add(OnUpdatePlanEvent(
                            subscriptionPlan: bloc.subscriptionPlanList[i],
                          ));
                        },
                        subscriptionPlan: bloc.subscriptionPlanList[i],
                        bloc: bloc,
                      ),
                  ],
                ),
                SizedBox(height: $constants.insets.xl),
                _buildBuyPremiumButton(context, () {}),
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

Widget _buttonContainer({
  required BuildContext context,
  required Function()? onPressed,
  required SubscriptionPlan subscriptionPlan,
  required PurchaseBloc bloc,
}) {
  bool isSelectedPlan = bloc.selectedSubscription == subscriptionPlan;
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular($constants.corners.md),
        ),
        padding: const EdgeInsets.all(0)),
    child: Container(
      height: 130,
      width: getSize(context).width * 0.26,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.md),
        gradient: isSelectedPlan ? $constants.palette.buttonGradient : null,
        color: $constants.palette.buttonBorder,
      ),
      padding: const EdgeInsets.all(4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              '${subscriptionPlan.superLikeCount}',
              style: getTextTheme(context).bodyMedium,
            ),
          ),
          SizedBox(height: $constants.insets.xs),
          FittedBox(
            child: Text(
              TextConstants.superLikes,
              style: getTextTheme(context).bodySmall,
            ),
          ),
          SizedBox(height: $constants.insets.xs),
          FittedBox(
            child: Text(
              subscriptionPlan.price,
              style: getTextTheme(context).bodyMedium,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildBuyPremiumButton(BuildContext context, Function() onPressed) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: $constants.insets.md,
      vertical: $constants.insets.sm,
    ),
    child: PrimaryButton(
      text: TextConstants.dialogBuyButton,
      onPressed: onPressed,
    ),
  );
}

Widget _noThanksButton(BuildContext context) {
  return TextButton(
    onPressed: () {
      Navigator.pop(context);
    },
    child: Text(
      TextConstants.noThanks.toUpperCase(),
      style: getTextTheme(context).bodySmall,
    ),
  );
}
