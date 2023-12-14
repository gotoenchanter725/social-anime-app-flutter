import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/feed/blocs/fetch_feed_bloc.dart';
import 'package:senpai/core/feed/blocs/like_user_bloc.dart';
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
          currState is ValidChangePageState || currState is NextUserState,
      listener: (context, state) {
        final bloc = BlocProvider.of<MatchBloc>(context);
        final storageBloc = getIt<HomeStorageBloc>();
        if (state is ValidChangePageState || bloc.users.length == 2) {
          final serverBloc = BlocProvider.of<FetchFeedBloc>(context);
          serverBloc.fetchFeed(
            userId: bloc.userID,
            profileFilter: storageBloc.filters,
            page: bloc.page,
          );
        }

        if (state is NextUserState) {
          final serverBloc = BlocProvider.of<LikeUserBloc>(context);
          serverBloc.likeUser(
            userId: int.parse(bloc.userID),
            likeeId: state.selectedUserId,
            likeType: state.swipe == Swipe.right
                ? LikeType.standard.name
                : LikeType.rejection.name,
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
