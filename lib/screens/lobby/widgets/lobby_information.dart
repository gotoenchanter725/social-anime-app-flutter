import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/match/bloc/lobby_count_cubit.dart';
import 'package:senpai/utils/methods/utils.dart';
import 'package:senpai/l10n/resources.dart';

class LobbyInformationWidget extends StatelessWidget {
  LobbyInformationWidget({
    Key? key,
  }) : super(key: key);

  final List<String> userImages = [
    // PathConstants.dummyVideoChatImage,
    // PathConstants.profileVerifyBg,
    // PathConstants.profileImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: getWidthSize(context, 0.037),
          right: getWidthSize(context, 0.037)),
      child: Container(
        padding: EdgeInsets.only(
            top: getWidthSize(context, 0.048),
            left: getWidthSize(context, 0.042),
            right: getWidthSize(context, 0.042)),
        height: getWidthSize(context, 0.42),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PathConstants.folderBackground),
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLobbyHeaderText(context),
            SizedBox(height: getWidthSize(context, 0.03)),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white.withOpacity(0.07),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(getWidthSize(context, 0.14)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(getWidthSize(context, 0.018)),
                      child: Center(
                        child: BlocBuilder<LobbyCubit, int>(
                          builder: (context, state) {
                            return Text(
                              '${R.strings.waitingInTheLobby}: $state',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: getWidthSize(context, 0.037),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getWidthSize(context, 0.03)),
                _buildAvatarsOverlay(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLobbyHeaderText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getWidthSize(context, 0.02)),
            Text(
              R.strings.lobbyAppBarTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: getWidthSize(context, 0.05),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              R.strings.usersCurrentlyInLobby,
              style: TextStyle(
                color: Colors.white70,
                fontSize: getWidthSize(context, 0.04),
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          PathConstants.lobbyIcon, // replace with your icon path
          width: getWidthSize(context, 0.1),
          height: getWidthSize(context, 0.1),
        ),
      ],
    );
  }

  Widget _buildAvatarsOverlay(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 40.0,
      child: Stack(
        children: [
          for (int i = 0;
              i < (userImages.length > 3 ? 3 : userImages.length);
              i++)
            Positioned(
              left: (2 - i) * 20.0,
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(userImages[userImages.length - 1 - i]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
          if (userImages.length > 3)
            const Positioned(
              left: 60.0,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 20.0,
                child: Icon(Icons.more_horiz, color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
