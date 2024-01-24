import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/feed/blocs/fetch_feed_bloc.dart';
import 'package:senpai/core/feed/blocs/like_user_bloc.dart';
import 'package:senpai/core/feed/blocs/undo_like_user_bloc.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart';
import 'package:senpai/screens/match/bloc/match_bloc.dart';
import 'package:senpai/screens/match/enums/match_enums.dart';

import 'package:senpai/screens/match/widgets/match_bottom_container.dart';
import 'package:senpai/screens/match/widgets/match_cards_stack_widget.dart';
import 'package:senpai/screens/match/widgets/match_helper_widget.dart';
import 'package:senpai/utils/constants.dart';

class MatchContent extends StatelessWidget {
  const MatchContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<MatchBloc, MatchState>(
      listenWhen: (_, currState) =>
          currState is ValidChangePageState ||
          currState is NextUserState ||
          currState is ValidUndoLikeState,
      listener: (context, state) {
        final bloc = BlocProvider.of<MatchBloc>(context);
        final storageBloc = getIt<HomeStorageBloc>();
        if (state is ValidChangePageState) {
          final serverBloc = BlocProvider.of<FetchFeedBloc>(context);
          serverBloc.fetchFeed(
            userId: bloc.userID,
            profileFilter: storageBloc.filters,
            refresh: state.isRefresh,
          );
        }

        if (state is NextUserState) {
          final serverBloc = BlocProvider.of<LikeUserBloc>(context);
          String likeType = '';
          if (state.swipe == Swipe.right) {
            likeType = LikeType.standard.likeTypeString;
          }
          if (state.swipe == Swipe.up) {
            likeType = LikeType.superLike.likeTypeString;
          }
          if (state.swipe == Swipe.left) {
            likeType = LikeType.rejection.likeTypeString;
          }

          serverBloc.likeUser(
            userId: int.parse(bloc.userID),
            likeeId: state.selectedUserId,
            likeType: likeType,
          );
        }
        if (state is ValidUndoLikeState) {
          final serverBloc = BlocProvider.of<UndoLikeUserBloc>(context);
          serverBloc.undoLikeUser(
            userId: bloc.userID,
          );
        }
      },
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          const MatchCardsStackWidget(),
          SizedBox(
            height: $constants.match.matchBottomHeight,
            child: const MatchBottomContainer(),
          ),
          if (BlocProvider.of<HomeStorageBloc>(context).isFirstOpenMatch)
            const MatchHelperWidget(),
        ],
      ),
    );
  }
}
