import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';
import 'package:senpai/screens/preview_profile/widgets/senpai_match_circle_button.dart';
import 'package:senpai/utils/constants.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../premium_screen/widgets/premium_purchase_dialog.dart';

class MatchBottomContainer extends StatelessWidget {
  const MatchBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchBloc, MatchState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<MatchBloc>(context);

        if (bloc.users.isEmpty &&
            state is! LoadingState &&
            state is! ValidUserIdState) {
          return Container(
            padding: EdgeInsets.all($constants.insets.sm),
            alignment: Alignment.bottomCenter,
            child: PrimaryButton(
              text: R.strings.tryAgainButton,
              onPressed: () => bloc.add(OnChangePageEvent(isRefresh: true)),
            ),
          );
        }
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular($constants.corners.md),
            gradient: $constants.palette.matchGradient,
          ),
          child: Padding(
            padding: EdgeInsets.all($constants.insets.sm),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _buildButtons(context),
                ),
                Positioned(
                  bottom: $constants.match.bottomMiddleButtons,
                  child: _buildMiddleButtons(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLogoBox() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          height: $constants.match.heightCenterBox,
          width: $constants.match.widthCenterBox,
          child: SvgPicture.asset(
            PathConstants.matchBackLogoIcon,
            width: $constants.insets.md,
            height: $constants.insets.md,
          ),
        ),
        SvgPicture.asset(
          PathConstants.senpaiLogoIcon,
          width: $constants.insets.lg,
          height: $constants.insets.lg,
        ),
      ],
    );
  }

  Widget _buildButtons(BuildContext context) {
    final bloc = BlocProvider.of<MatchBloc>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SenpaiMatchCircleButton(
          customIcon: SvgPicture.asset(
            PathConstants.crownIcon,
            width: $constants.insets.md,
            height: $constants.insets.md,
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
              bloc.userNow.premium == true
                  ? $constants.palette.yellow
                  : $constants.palette.white,
              BlendMode.srcIn,
            ),
          ),
          isReverceColor: bloc.swipeUser == Swipe.up,
          isSuperLike: bloc.swipeUser == Swipe.up,
          onTap: () async {
            // todo change it
            if (bloc.superLikeCount <= 0) {
              return openPremiumPurchaseDialog(context, bloc.userID);
            }

            bloc.swipeUser = Swipe.up;
            bloc.flipCardController[bloc.currentProfileIndex]
                .toggleCard()
                .whenComplete(() {
              Future.delayed(const Duration(milliseconds: 1000), () {
                bloc.cardsSwipeController
                    .next(swipeDirection: SwipeDirection.up);
              });
            });
          },
        ),
        SizedBox(height: $constants.insets.md),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SenpaiMatchCircleButton(
              icon: PathConstants.refreshIcon,
              onTap:
                  bloc.swipeUser == Swipe.rewind || bloc.swipeUser == Swipe.none
                      ? null
                      : () => bloc.add(OnUndoLikeEvent()),
            ),
            SizedBox(width: $constants.insets.md),
            Flexible(child: _buildLogoBox()),
            SizedBox(width: $constants.insets.md),
            SenpaiMatchCircleButton(
              onTap: () async {
                await context.router.push(
                  PreviewProfileRoute(
                    userId: bloc.userID,
                    onTapLike: () async {
                      await context.router.pop();
                      bloc.cardsSwipeController
                          .next(swipeDirection: SwipeDirection.right);
                    },
                    onTapClose: () async {
                      await context.router.pop();
                      bloc.cardsSwipeController
                          .next(swipeDirection: SwipeDirection.left);
                    },
                    vieweeId: bloc.userNow.id,
                  ),
                );
              },
              customIcon: Icon(
                Icons.info,
                color: $constants.palette.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddleButtons(BuildContext context) {
    final bloc = BlocProvider.of<MatchBloc>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SenpaiMatchCircleButton(
          icon: PathConstants.closeIcon,
          onTap: () {
            bloc.swipeUser = Swipe.left;
            bloc.cardsSwipeController.next(swipeDirection: SwipeDirection.left);
          },
          customPadding: $constants.insets.xs,
          isReverceColor: bloc.swipeUser == Swipe.left,
        ),
        SizedBox(width: $constants.match.widthCenterMiddleButtons),
        SenpaiMatchCircleButton(
          icon: PathConstants.matchIcon,
          onTap: () {
            bloc.swipeUser = Swipe.right;
            bloc.cardsSwipeController
                .next(swipeDirection: SwipeDirection.right);
          },
          isReverceColor: bloc.swipeUser == Swipe.right,
        ),
      ],
    );
  }
}
