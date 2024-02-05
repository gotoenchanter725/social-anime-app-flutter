import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/core/user/blocs/add_super_likes/add_super_likes.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/premium_screen/bloc/purchase_bloc.dart';
import 'package:senpai/screens/premium_screen/widgets/premium_item_button.dart';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

void openPremiumPurchaseDialog(
  BuildContext context,
  String userId,
) {
  showDialog<int>(
    context: context,
    builder: (_) {
      return Dialog(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        shadowColor: Colors.transparent,
        elevation: 0,
        child: BlocProvider(
          create: (_) => PurchaseBloc()..add(OnPlanInitEvent()),
          child: const PurchaseDialog(),
        ),
      );
    },
  ).then((value) {
    if (value != null) {
      final serverBloc = BlocProvider.of<AddSuperLikesBloc>(context);
      serverBloc.addSuperLikesInfo(
        userId: userId,
        superLikeCount: value,
      );
    }
  });
}

class PurchaseDialog extends StatelessWidget {
  const PurchaseDialog({Key? key}) : super(key: key);

  void _onTapBuy(BuildContext context) {
    final bloc = BlocProvider.of<PurchaseBloc>(context);
    final Map<String, PurchaseDetails> purchases =
        Map<String, PurchaseDetails>.fromEntries(
      bloc.purchases.map((PurchaseDetails purchase) {
        if (purchase.pendingCompletePurchase) {
          bloc.inAppPurchase.completePurchase(purchase);
        }
        return MapEntry<String, PurchaseDetails>(
          purchase.productID,
          purchase,
        );
      }),
    );
    bloc.add(
      OnTapBuyConsumableEvent(
        productDetails: bloc.selectedProductDetails!,
        purchases: purchases,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PurchaseBloc, PurchaseState>(
      listener: (context, state) {
        final bloc = BlocProvider.of<PurchaseBloc>(context);

        if (bloc.isPurchased == true) {
          Navigator.pop(context, bloc.selectedSubscription?.superLikeCount);
        }
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<PurchaseBloc>(context);
        Widget content = const SizedBox();
        if (state is PurchaseErrorState && state.message.isNotEmpty) {
          content = _buildErrorDialog(state.message);
        } else if (bloc.isAvailablePurchase == false) {
          content = _buildErrorDialog(
            R.strings.unableToConnectToThePaymentsProcessor,
          );
        } else if (bloc.isAvailablePurchase != null) {
          content = _buildContent(context);
        }
        return Stack(
          children: [
            Container(
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
              child: content,
            ),
            if (state is LoadingState) const SenpaiLoading(),
          ],
        );
      },
    );
  }

  Widget _buildContent(BuildContext context) {
    final bloc = BlocProvider.of<PurchaseBloc>(context);

    return Column(
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
          children: bloc.subscriptionPlanList
              .map((plan) => PremiumItemButton(
                    onPressed: () {
                      bloc.add(OnUpdatePlanEvent(subscriptionPlan: plan));
                    },
                    subscriptionPlan: plan,
                    selectedSubscription: bloc.selectedSubscription,
                  ))
              .toList(),
        ),
        SizedBox(height: $constants.insets.xl),
        if (bloc.selectedSubscription != null)
          _buildBuyPremiumButton(
            context,
            () {
              _onTapBuy(context);
            },
            bloc.selectedSubscription?.price ?? '',
          ),
        SizedBox(height: $constants.insets.xs),
        _noThanksButton(context),
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

  Widget _buildErrorDialog(String text) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.warning, color: $constants.palette.red),
        SizedBox(height: $constants.insets.xs),
        Text(text)
      ],
    );
  }
}
