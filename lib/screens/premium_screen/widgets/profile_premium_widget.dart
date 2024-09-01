import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:senpai/core/user/blocs/grant_user_premium/grant_user_premium_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/premium_screen/bloc/purchase_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/utils.dart';

class ProfilePremiumWidget extends StatelessWidget {
  final bool isCenterContent;
  final int userId;

  const ProfilePremiumWidget({
    super.key,
    this.isCenterContent = false,
    required this.userId,
  });

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
      OnTapBuyNonConsumableEvent(
        purchases: purchases,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PurchaseBloc, PurchaseState>(
      listener: (context, state) {
        final bloc = BlocProvider.of<PurchaseBloc>(context);

        if (state is PurchaseErrorState && state.message.isNotEmpty) {
          showSnackBarError(context, state.message);
        } else if (bloc.isAvailablePurchase == false) {
          showSnackBarError(
            context,
            R.strings.unableToConnectToThePaymentsProcessor,
          );
        }

        if (bloc.isPurchased == true) {
          final serverBloc = BlocProvider.of<GrantUserPremiumBloc>(context);
          serverBloc.grantUserPremium(
            userId: userId,
          );
        }
      },
      builder: (context, state) {
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
              _buildPremiumText(context, R.strings.unlimitedVideoCalls),
              SizedBox(height: $constants.insets.sm),
              _buildPremiumText(context, R.strings.premiumAvatars),
              SizedBox(height: $constants.insets.sm),
              _buildPremiumText(context, R.strings.higherVisibility),
              SizedBox(height: $constants.insets.sm),
              _buildPremiumText(context, R.strings.premiumAbilityAnimesText),
              SizedBox(height: $constants.insets.md),
              _buildPremiumText(context, R.strings.cancelAnytimeTitle),
              SizedBox(height: $constants.insets.md),
              PrimaryButton(
                text: R.strings.premiumUpgradeText,
                onPressed: () async {
                  _onTapBuy(context);
                },
              ),
              if (isCenterContent) SizedBox(height: $constants.insets.lg),
            ],
          ),
        );
      },
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
            R.strings.senpaiPremiumTitle,
            style: getTextTheme(context).headlineLarge?.copyWith(),
          ),
          SizedBox(height: $constants.insets.xs),
        ],
      );
    }
    return Row(
      children: [
        Text(
          R.strings.senpaiPremiumTitle,
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
