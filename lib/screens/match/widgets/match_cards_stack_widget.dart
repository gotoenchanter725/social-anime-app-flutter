import 'dart:developer';

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';
import 'package:senpai/screens/match/widgets/empty_match_widget.dart';
import 'package:senpai/screens/match/widgets/match_drag_widget.dart';
import 'package:senpai/screens/match/widgets/profile_card_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../../data/path_constants.dart';

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
        return Stack(
          clipBehavior: Clip.none,
          children: [

            /// new
            // ...List.generate(
            //   bloc.users.length,
            //       (index) {
            //     return
        Positioned.fill(
                  child: SwipableStack(
                    detectableSwipeDirections: const {
                      SwipeDirection.right,
                      SwipeDirection.left,
                      SwipeDirection.up,
                      // SwipeDirection.down,
                    },
                    itemCount: bloc.users.length,
                    // controller: _controller,
                    controller: bloc.cardSwipeController,
                    stackClipBehaviour: Clip.none,
                    onSwipeCompleted: (index, direction) {
                    //TODO: Uncommented for Herbert to check.
                      if (direction == SwipeDirection.left) {
                        print('-------------OnCancelUserEvent $direction');
                        bloc.add(OnCancelUserEvent());
                      } else if (direction == SwipeDirection.right) {
                        print('-------------OnLikeUserEvent $direction');
                        bloc.add(OnLikeUserEvent());
                          //TODO: superLike ?
                        // } else if (direction == SwipeDirection.up) {
                        //   print('-------------SwipeDirection up$direction');
                      }
                      // if(direction == SwipeDirection.left) {
                      //   // bloc.add(OnCancelUserEvent());
                      // } else if(direction == SwipeDirection.right) {
                      //   // bloc.add(OnLikeUserEvent());
                      // }

                      // bloc.users = bloc.users..remove(bloc.userNow);
                      // bloc.users = bloc.users..removeWhere((element) => element.id == bloc.);
                      if (bloc.users.isNotEmpty) {
                        // bloc.userNow = bloc.users.last;
                        bloc.userNow = bloc.users.where((element) => element.id == bloc.users[(bloc.users.length - (index + 1)).toInt()].id).first;
                      }
                      if (bloc.users.length == 2) {
                        bloc.page += 1;
                      }

                      if(kDebugMode){
                        log('$index, $direction');
                      }
                    },
                    horizontalSwipeThreshold: 0.8,
                    verticalSwipeThreshold: 0.8,
                    builder: (context, properties) {
                      final itemIndex = properties.index % bloc.users.length;

                      log('user list length: ${bloc.users.length} '
                          '<<>> item index: $itemIndex '
                          '<<>> property index: ${properties.index} '
                          '<<>> userId: ${bloc.userID} '
                          '<<>> usernow: ${bloc.userNow.id} == ${bloc.userNow.firstName} == '
                          '${bloc.users.indexWhere((element) => element.id == bloc.userNow.id)}'
                          '<<>> user item index ${bloc.users[itemIndex].id} == ${bloc.users[itemIndex].firstName} '
                          '<<>> last user ${bloc.users[bloc.users.length - 1]}');

                      log('swipe card direction: ${properties.direction} == ${properties.swipeProgress}');

                      if(properties.direction == SwipeDirection.up && properties.swipeProgress > 0.2) {
                        log("@@1");
                        if(bloc.flipCardController.state != null) {
                          log("@@2");
                          if (!bloc.flipCardController.state!.isFront) {
                            log("@@3");
                            bloc.flipCardController.toggleCard();
                          }
                        }
                      } else {
                        log("@@7");
                        if(bloc.flipCardController.state != null) {
                          log("@@8");
                          if (bloc.flipCardController.state!.isFront) {
                            log("@@9");
                            bloc.flipCardController.toggleCard();
                          }
                        }
                      }

                      return FlipCard(
                        // key: GlobalKey(),
                          // controller: flipCardController,
                          controller: bloc.flipCardController,
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
                            ProfileCard(user: bloc.users[bloc.users.length - (itemIndex + 1)]),

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

              // },
            // ),
            ///

            // ...List.generate(
            //   bloc.users.length,
            //   (index) {
            //     return MatchDragWidget(
            //       user: bloc.users[index],
            //       index: index,
            //       swipe: swipe,
            //       bloc: bloc,
            //     );
            //   },
            // ),
            // Positioned(
            //   left: 0,
            //   child: DragTarget<int>(
            //     builder: (
            //       BuildContext context,
            //       List<dynamic> accepted,
            //       List<dynamic> rejected,
            //     ) {
            //       return IgnorePointer(child: _buildIgnoreContainer(context));
            //     },
            //     onAccept: (int index) {
            //       bloc.add(OnCancelUserEvent());
            //     },
            //   ),
            // ),
            // Positioned(
            //   right: 0,
            //   child: DragTarget<int>(
            //     builder: (
            //       BuildContext context,
            //       List<dynamic> accepted,
            //       List<dynamic> rejected,
            //     ) {
            //       return IgnorePointer(child: _buildIgnoreContainer(context));
            //     },
            //     onAccept: (int index) {
            //       bloc.add(OnLikeUserEvent());
            //     },
            //   ),
            // ),
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
