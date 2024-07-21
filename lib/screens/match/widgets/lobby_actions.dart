import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';

class LobbyActions extends StatelessWidget {
  const LobbyActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Image.asset(
            PathConstants.lobbyActionsBackground,
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                PathConstants.matchFoundIcon,
                width: 36.0,
                height: 36.0,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'MATCH FOUND',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildAcceptButton(context),
                const SizedBox(height: 28.0),
                _buildRejectButton(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAcceptButton(BuildContext context) {
    return SizedBox(
      width: 143.0,
      height: 41.0,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              PathConstants.acceptBtnBg,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                // move to the chat invite page
              },
              child: const Text(
                'Accept',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRejectButton(BuildContext context) {
    return SizedBox(
      width: 122.0,
      height: 40,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
              side: const BorderSide(
                color: Color.fromRGBO(52, 65, 85, 1),
                width: 1.0,
              ),
            ),
          ),
          alignment: Alignment.center,
        ),
        onPressed: () {
          print("Reject button pressed");
        },
        child: const Center(
          child: Text(
            'Decline',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
