import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';
import 'package:senpai/screens/match/widgets/empty_match_widget.dart';
import 'package:senpai/screens/match/widgets/profile_card_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../profile/bloc/profile_bloc.dart';

class MatchCardsStackWidget extends StatelessWidget {
  const MatchCardsStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchBloc, MatchState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<MatchBloc>(context);

        if (bloc.users.isEmpty &&
            state is! LoadingState &&
            state is! ValidUserIdState) {
          return const EmptyMatchWidget();
        }

        final userBloc = BlocProvider.of<ProfileBloc>(context);

        bloc.cardSwipeController = [];
        bloc.flipCardController = [];
        return Stack(
          clipBehavior: Clip.none,
          children: [
            ...List.generate(
              bloc.users.length,
              (profileIndex) {
                bloc.cardSwipeController.add(SwipableStackController());
                bloc.flipCardController.add(FlipCardController());
                bloc.currentProfileIndex = profileIndex;

                return Positioned.fill(
                  child: SwipableStack(
                    controller: bloc.cardSwipeController[profileIndex],
                    detectableSwipeDirections:
                        (userBloc.user.superLikeCount != null &&
                                userBloc.user.superLikeCount! <= 0)
                            ? const {
                                SwipeDirection.right,
                                SwipeDirection.left,
                              }
                            : const {
                                SwipeDirection.right,
                                SwipeDirection.left,
                                SwipeDirection.up,
                                // SwipeDirection.down,
                              },
                    itemCount: 1,
                    stackClipBehaviour: Clip.none,
                    onSwipeCompleted: (_, direction) {
                      if (direction == SwipeDirection.left) {
                        bloc.swipeUser = Swipe.left;
                        bloc.add(OnCancelUserEvent());
                      } else if (direction == SwipeDirection.right) {
                        bloc.swipeUser = Swipe.right;
                        bloc.add(OnLikeUserEvent());
                      } else if (direction == SwipeDirection.up) {
                        bloc.swipeUser = Swipe.up;
                        bloc.add(OnSuperLikeUserEvent());
                      }
                    },
                    horizontalSwipeThreshold: 0.8,
                    verticalSwipeThreshold: 0.8,
                    builder: (context, properties) {
                      if (bloc.users[profileIndex] == bloc.userNow) {
                        if (properties.direction == SwipeDirection.up &&
                            properties.swipeProgress > 0.2) {
                          if (bloc.flipCardController[profileIndex].state !=
                              null) {
                            if (!bloc.flipCardController[profileIndex].state!
                                .isFront) {
                              bloc.flipCardController[profileIndex]
                                  .toggleCard();
                            }
                          }
                        } else {
                          if (bloc.flipCardController[profileIndex].state !=
                              null) {
                            if (bloc.flipCardController[profileIndex].state!
                                .isFront) {
                              bloc.flipCardController[profileIndex]
                                  .toggleCard();
                            }
                          }
                        }
                      }

                      return FlipCard(
                        controller: bloc.flipCardController[profileIndex],
                        side: CardSide.BACK,
                        direction: FlipDirection.VERTICAL,
                        flipOnTouch: false,
                        speed: 500,
                        front: Container(
                          color: Colors.black,
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/images/match/super_like_bg.png',
                            height: 190,
                            width: 190,
                            color: Colors.white,
                            fit: BoxFit.contain,
                          ),
                        ),
                        back: Stack(
                          children: [
                            ProfileCard(user: bloc.users[profileIndex]),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildIgnoreContainer(BuildContext context) {
    return Container(
      height: getSize(context).height,
      width: (getSize(context).width / 2) - $constants.insets.sm,
      color: Colors.transparent,
    );
  }
}
