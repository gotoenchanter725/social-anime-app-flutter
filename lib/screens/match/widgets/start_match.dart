import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/screens/lobby/page/lobby_information.dart';
import 'package:senpai/screens/match/widgets/match_header.dart';
import 'package:senpai/screens/match/widgets/match_texture.dart';
import 'package:senpai/screens/match/widgets/verification_overlay.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/aliases.dart';

class StartMatch extends StatefulWidget {
  const StartMatch({super.key});

  @override
  State<StartMatch> createState() => _StartMatchState();
}

class _StartMatchState extends State<StartMatch> {
  bool isVerified = false;

  @override
  void initState() {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    isVerified = bloc.isUserVerified;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      body: Stack(
        children: [
          SafeArea(
            child: Stack(
              children: [
                const Positioned(
                  // top: kBottomNavigationBarHeight - 3,
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: kBottomNavigationBarHeight + 60),
                      child: MatchTextureWidget(
                        isMatching: false,
                        isMatchFound: false,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const MatchHeaderWidget(isMatching: false),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height -
                    //       MediaQuery.of(context).padding.top -
                    //       MediaQuery.of(context).padding.bottom -
                    //       MediaQuery.of(context).size.width * 508 / 375,
                    //   child: Center(
                    //     child: Text(
                    //       "Are you ready to get started?",
                    //       style: getTextTheme(context)
                    //           .headlineSmall!
                    //           .copyWith(fontSize: 22.0),
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.058,
                    ),
                    const LobbyInformationWidget(
                        userImages: [], usersInLobby: 10),
                  ],
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: PrimaryButton(
                    text: "Start Matching",
                    onPressed: () {
                      appRouter.pushNamed("/lobby");
                    },
                  ),
                ),
              ],
            ),
          ),
          if (!isVerified)
            VerificationOverlayWidget(
              onClosed: () {
                setState(() {
                  isVerified = true;
                });
              },
              onStartVerification: () {
                setState(() {
                  isVerified = true;
                });
              },
            ),
        ],
      ),
    );
  }
}
