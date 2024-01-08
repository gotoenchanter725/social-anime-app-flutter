import 'dart:developer';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/empty_match_widget.dart';
import 'package:senpai/screens/match/widgets/profile_card_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../profile/bloc/profile_bloc.dart';

class MatchCardsStackWidget extends StatefulWidget {
  const MatchCardsStackWidget({Key? key}) : super(key: key);

  @override
  State<MatchCardsStackWidget> createState() => _MatchCardsStackWidgetState();
}

class _MatchCardsStackWidgetState extends State<MatchCardsStackWidget> {
  late final SwipableStackController _controller;
  // final FlipCardController flipCardController = FlipCardController();

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    // _controller = SwipableStackController()..addListener(_listenController);
    _controller = SwipableStackController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

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

        // final swipe = bloc.swipeUser;
        // log("swipe: $swipe");
        // if(state is NextUserState &&
        //     state is! LoadingState &&
        //     state is! ValidUserIdState) {
        //   if(swipe == Swipe.left) {
        //     log("swipe left true");
        //     _controller.next(swipeDirection: SwipeDirection.left);
        //   } else if(swipe == Swipe.right) {
        //     log("swipe right true");
        //   _controller.next(swipeDirection: SwipeDirection.right);
        //   } else if(swipe == Swipe.up) {
        //     log("swipe up true");
        //     flipCardController.toggleCard().whenComplete(() {
        //       Future.delayed(Duration(milliseconds: 1500), (){
        //         _controller.next(swipeDirection: SwipeDirection.up);
        //       });
        //     });
        //   }
        // }

        // final swipe = bloc.swipeUser;

        bloc.generateList();
        final userBloc = BlocProvider.of<ProfileBloc>(context);
        return Stack(
          clipBehavior: Clip.none,
          children: [
            /// new
            Positioned.fill(
              child: SwipableStack(
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
                itemCount: bloc.users.length,
                // itemCount: 1,
                // controller: _controller,
                controller: bloc.cardSwipeController,
                stackClipBehaviour: Clip.none,
                onSwipeCompleted: (index, direction) {
                  if (bloc.users.isNotEmpty) {
                    // bloc.userNow = bloc.users.last;

                    UserProfileModel userProfileNow =
                        bloc.users[bloc.users.length - (index + 2)];
                    int currentUserIndex = bloc.users.indexWhere(
                        (element) => element.id == userProfileNow.id);
                    bloc.userNow = bloc.users[currentUserIndex];

                    log('after swipe complete user: ${bloc.userNow}');

                    // bloc.userNow = bloc.users.where((element) => element.id == bloc.users[(bloc.users.length - (index + 1)).toInt()].id).first;
                  }
                  if (bloc.users.length == 2) {
                    bloc.page += 1;
                  }

                  if (kDebugMode) {
                    log('$index, $direction');
                  }
                },
                horizontalSwipeThreshold: 0.8,
                verticalSwipeThreshold: 0.8,
                builder: (context, properties) {
                  final itemIndex = properties.index % bloc.users.length;

                  if (bloc.users[bloc.users.length - (itemIndex + 1)] ==
                      bloc.userNow) {
                    if (properties.direction == SwipeDirection.up &&
                        properties.swipeProgress > 0.2) {
                      if (bloc
                              .flipCardController[
                                  bloc.users.length - (itemIndex + 1)]
                              .state !=
                          null) {
                        if (!bloc
                            .flipCardController[
                                bloc.users.length - (itemIndex + 1)]
                            .state!
                            .isFront) {
                          bloc.flipCardController[
                                  bloc.users.length - (itemIndex + 1)]
                              .toggleCard();
                        }
                      }
                    } else {
                      if (bloc
                              .flipCardController[
                                  bloc.users.length - (itemIndex + 1)]
                              .state !=
                          null) {
                        if (bloc
                            .flipCardController[
                                bloc.users.length - (itemIndex + 1)]
                            .state!
                            .isFront) {
                          bloc.flipCardController[
                                  bloc.users.length - (itemIndex + 1)]
                              .toggleCard();
                        }
                      }
                    }
                  }

                  return FlipCard(
                    controller: bloc.flipCardController[
                        bloc.users.length - (itemIndex + 1)],
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
                        ProfileCard(
                            user: bloc
                                .users[bloc.users.length - (itemIndex + 1)]),
                        // ProfileCard(user: bloc.users[itemIndex]),

                        // if(properties.direction == SwipeDirection.right
                        //     && properties.swipeProgress > 0.2
                        // && properties.index == 0)
                        //   Positioned(
                        //     right: 0,
                        //     child: Image.asset(
                        //       PathConstants.matchLikeImage,
                        //       width: getSize(context).width,
                        //       fit: BoxFit.fitWidth,
                        //     ),
                        //   ),
                      ],
                    ),
                  );
                },
              ),
            ),

            ///
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
