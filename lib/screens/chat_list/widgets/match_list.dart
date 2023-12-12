import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/action_cable/blocs/action_cable_bloc.dart';
import 'package:senpai/core/chat/blocs/online_status_bloc.dart';
import 'package:senpai/core/widgets/user_avator_named.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/models/match/match_user_data.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';

class MatchList extends StatelessWidget {
  final List<MatchUserData> users; // List of user data

  const MatchList({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnlineStatusBloc>(
      create: (context) => OnlineStatusBloc()..connect(),
      child: BlocBuilder<OnlineStatusBloc, ActionCableState>(
          builder: (context, state) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: users.map((user) {
              return Padding(
                padding: EdgeInsets.only(right: $constants.corners.md),
                child: GestureDetector(
                  onTap: () {
                    context.router.push(
                      ChatRoute(
                        roomArgs: ChatRoomParams(
                          reciepientName: user.userName,
                          roomId: user.id,
                          reciepientProfileUrl: user.imageUrl,
                          isOnline: user.isOnline,
                        ),
                      ),
                    );
                  },
                  child: UserAvatarWithName(
                    imageUrl: user.imageUrl,
                    userName: user.userName,
                    isOnline: user.isOnline,
                  ),
                ),
              );
            }).toList(),
          ),
        );
      }),
    );
  }
}
