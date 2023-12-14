import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/widgets/empty_match_widget.dart';
import 'package:senpai/screens/match/widgets/match_drag_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

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

        final swipe = bloc.swipeUser;
        return Stack(
          clipBehavior: Clip.none,
          children: [
            ...List.generate(
              bloc.users.length,
              (index) {
                return MatchDragWidget(
                  user: bloc.users[index],
                  index: index,
                  swipe: swipe,
                  bloc: bloc,
                );
              },
            ),
            Positioned(
              left: 0,
              child: DragTarget<int>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return IgnorePointer(child: _buildIgnoreContainer(context));
                },
                onAccept: (int index) {
                  bloc.add(OnCancelUserEvent());
                },
              ),
            ),
            Positioned(
              right: 0,
              child: DragTarget<int>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return IgnorePointer(child: _buildIgnoreContainer(context));
                },
                onAccept: (int index) {
                  bloc.add(OnLikeUserEvent());
                },
              ),
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
