import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/match_users/bloc/match_users_bloc.dart';
import 'package:senpai/utils/constants.dart';

class MatchHeartWidget extends StatelessWidget {
  final bool chageSize;
  const MatchHeartWidget({
    Key? key,
    this.chageSize = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height:
          chageSize ? $constants.insets.offset * 1.5 : $constants.insets.offset,
      width:
          chageSize ? $constants.insets.offset * 1.5 : $constants.insets.offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
      onEnd: () {
        final bloc = BlocProvider.of<MatchUsersBloc>(context);
        bloc.add(OnFinishTimerEvent());
      },
      child: SvgPicture.asset(
        PathConstants.matchHeartBgIcon,
        height: $constants.insets.offset,
        width: $constants.insets.offset,
      ),
    );
  }
}
