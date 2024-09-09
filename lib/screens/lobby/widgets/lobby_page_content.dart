import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/match/blocs/stop_video_match_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/match/widgets/match_texture.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';

import 'lobby_information.dart';

class LobbyPageContentWidget extends StatelessWidget {
  const LobbyPageContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: SenpaiAppBar(
        title: "Lobby", // R.strings.lobbyAppBarTitle,
        hasLeading: false,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              // bottom: MediaQuery.of(context).size.height * 0.05,
              child: Center(
                child: MatchTextureWidget(
                  onAccepted: () {
                    // user is happy with the match
                    // start video call
                  },
                  onDeclined: () {
                    // user is not happy with the match
                    // search for another match
                  },
                ),
              ),
            ),
            Column(
              children: [
                LobbyInformationWidget(),
                const SizedBox(height: 16.0),
                Expanded(child: Container()),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: PrimaryButton(
                    text: R.strings.exitLobby,
                    onPressed: () {
                      final userId = context.read<ProfileBloc>().userID;

                      context.read<StopVideoMatchBloc>().stopVideoMatch(userId);
                    },
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
