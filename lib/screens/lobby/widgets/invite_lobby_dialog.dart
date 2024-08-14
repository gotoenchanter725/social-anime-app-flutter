import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/send_video_chat_request_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/lobby/bloc/invite_video_chat_cubit.dart';
import 'package:senpai/screens/lobby/widgets/video_request_contents.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

import 'invite_lobby_contents.dart';

void showInviteLobbyDialog(BuildContext context, dynamic matchData) {
  showDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.7),
    builder: (BuildContext context) {
      return InviteLobbyDialog(
        child: InviteLobbyContents(
          matchData: matchData,
        ),
      );
    },
  );
}

class InviteLobbyDialog extends StatelessWidget {
  final Widget child;

  const InviteLobbyDialog({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => InviteToVideoChatCubit(),
          ),
          BlocProvider(create: (context) => SendVideoChatRequestBloc()),
          BlocProvider(
            create: (_) => ProfileBloc()
              ..add(
                OnInitUserID(),
              ),
          ),
        ],
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is LoadingProfileState) {
              return const SenpaiLoading();
            }
            return child;
          },
        ),
      ),
    );
  }
}
