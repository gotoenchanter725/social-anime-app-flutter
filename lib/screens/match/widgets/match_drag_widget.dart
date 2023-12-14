import 'dart:math';

import 'package:flutter/material.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';
import 'package:senpai/screens/match/widgets/profile_card_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchDragWidget extends StatelessWidget {
  final UserProfileModel user;
  final int index;
  final Swipe swipe;
  final MatchBloc bloc;

  const MatchDragWidget({
    Key? key,
    required this.user,
    required this.index,
    required this.swipe,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        hitTestBehavior: HitTestBehavior.translucent,
        data: index,
        axis: Axis.horizontal,
        feedback: const SizedBox.shrink(),
        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          final detailsDeltaDx = dragUpdateDetails.delta.dx;
          final detailsGlobalPositionDx = dragUpdateDetails.globalPosition.dx;

          //When Draggable widget is dragged right
          if (bloc.swipeUser != Swipe.right &&
              detailsDeltaDx > 0 &&
              detailsGlobalPositionDx > getSize(context).width / 2) {
            bloc.add(OnChangeSwipeUserEvent(swipe: Swipe.right));
          }

          // When Draggable widget is dragged left
          if (bloc.swipeUser != Swipe.left &&
              detailsDeltaDx < 0 &&
              detailsGlobalPositionDx < getSize(context).width / 2) {
            bloc.add(OnChangeSwipeUserEvent(swipe: Swipe.left));
          }
        },
        onDragEnd: (drag) {
          bloc.add(OnChangeSwipeUserEvent(swipe: Swipe.none));
        },
        childWhenDragging: Stack(
          children: [
            _buildProfileDragging(),
            _buildOptionalWidget(context),
          ],
        ),
        child: ProfileCard(user: user),
      ),
    );
  }

  Widget _buildProfileDragging() {
    if (swipe == Swipe.right) {
      return RotationTransition(
        turns: const AlwaysStoppedAnimation(15 / 360),
        child: Transform.rotate(
          origin: const Offset(0, 1000),
          angle: pi / 36.0,
          child: ProfileCard(user: user),
        ),
      );
    } else if (swipe == Swipe.left) {
      return RotationTransition(
        turns: const AlwaysStoppedAnimation(-15 / 360),
        child: Transform.rotate(
          origin: const Offset(0, 1000),
          angle: -pi / 36.0,
          child: ProfileCard(user: user),
        ),
      );
    } else {
      return RotationTransition(
        turns: const AlwaysStoppedAnimation(0),
        child: Transform.rotate(
          origin: const Offset(0, 0),
          angle: 0,
          child: ProfileCard(user: user),
        ),
      );
    }
  }

  Widget _buildOptionalWidget(BuildContext context) {
    if (swipe == Swipe.right) {
      return Positioned(
        right: 0,
        child: Image.asset(
          PathConstants.matchLikeImage,
          width: getSize(context).width,
          fit: BoxFit.fitWidth,
        ),
      );
    } else if (swipe == Swipe.left) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular($constants.corners.md),
          gradient: $constants.palette.matchDislikeGradient,
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
