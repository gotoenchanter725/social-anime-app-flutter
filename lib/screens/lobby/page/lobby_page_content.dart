import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/match/widgets/match_texture.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';

import 'lobby_information.dart';

class LobbyPageContentWidget extends StatefulWidget {
  const LobbyPageContentWidget({super.key});

  @override
  State<LobbyPageContentWidget> createState() => _LobbyPageContentWidgetState();
}

class _LobbyPageContentWidgetState extends State<LobbyPageContentWidget> {
  bool isMatchFound = false;

  @override
  void initState() {
    // final bloc = BlocProvider.of<ProfileBloc>(context);
    // isVerified = bloc.isUserVerified;
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        isMatchFound = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: SenpaiAppBar(
        title: R.strings.lobbyAppBarTitle,
        hasLeading: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              // bottom: MediaQuery.of(context).size.height * 0.05,
              child: Center(
                child: MatchTextureWidget(
                  isMatching: !isMatchFound,
                  isMatchFound: isMatchFound,
                ),
              ),
            ),
            Column(
              children: [
                isMatchFound
                    ? const LobbyInformationWidget(
                        userImages: [], usersInLobby: 10)
                    : SizedBox(
                        height: MediaQuery.of(context).size.width * 0.42,
                      ),
                const SizedBox(height: 16.0),
                Expanded(child: Container()),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: PrimaryButton(
                    text: 'Exit Lobby',
                    onPressed: () {
                      appRouter.pop();
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
