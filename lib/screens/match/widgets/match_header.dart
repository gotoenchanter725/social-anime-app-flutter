import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';

class MatchHeader extends StatelessWidget {
  const MatchHeader(
      {Key? key, required this.userImages, required this.usersInLobby})
      : super(key: key);

  final int usersInLobby;
  final List<String> userImages;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18.0),
        height: 180,
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
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white.withOpacity(0.07),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Waiting in the lobby: $usersInLobby',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                _buildAvatorsOverlay(context),
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
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4.0),
            Text(
              'Lobby',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Users currently in the Lobby.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
        SvgPicture.asset(
          PathConstants.lobbyIcon, // replace with your icon path
          width: 42.0,
          height: 42.0,
        ),
      ],
    );
  }

  Widget _buildAvatorsOverlay(BuildContext context) {
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
                    image: NetworkImage(userImages[userImages.length - 1 - i]),
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
