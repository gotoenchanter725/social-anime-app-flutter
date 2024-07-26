import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/path_constants.dart';

class MatchTextureWidget extends StatefulWidget {
  const MatchTextureWidget({
    super.key,
    required this.isMatching,
    required this.isMatchFound,
  });
  final bool isMatching;
  final bool isMatchFound;

  @override
  State<MatchTextureWidget> createState() => _MatchTextureWidgetState();
}

class _MatchTextureWidgetState extends State<MatchTextureWidget> {
  late Timer _timer;
  int _dotCount = 0;
  final List<String> _findingText = [
    "Finding a Match",
    "Finding a Match.",
    "Finding a Match..",
    "Finding a Match...",
  ];

  @override
  void initState() {
    super.initState();
    if (widget.isMatching) {
      _startTimer();
    }
  }

  @override
  void didUpdateWidget(MatchTextureWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isMatching && !oldWidget.isMatching) {
      _startTimer();
    } else if (!widget.isMatching && oldWidget.isMatching) {
      _stopTimer();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dotCount = (_dotCount + 1) % _findingText.length;
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
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
          backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 508 / 375,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            PathConstants.lobbyActionsBackground,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 508 / 375,
          ),
          Center(
            child: AnimatedOpacity(
              opacity: widget.isMatching ? 0.8 : 0,
              duration: const Duration(milliseconds: 500),
              child: ClipOval(
                child: Image.asset(
                  PathConstants.matchingAnimation,
                  width: MediaQuery.of(context).size.width - 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.isMatchFound)
                  SvgPicture.asset(
                    PathConstants.matchFoundIcon,
                    width: 36.0,
                    height: 36.0,
                  ),
                if (widget.isMatchFound) const SizedBox(height: 16.0),
                Text(
                  widget.isMatchFound
                      ? 'MATCH FOUND'
                      : widget.isMatching
                          ? _findingText[_dotCount]
                          : "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          if (widget.isMatchFound)
            Positioned(
              top: (MediaQuery.of(context).size.width - 100) * 1.3,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildAcceptButton(context),
                  SizedBox(
                      height: (MediaQuery.of(context).size.width - 100) * 0.07),
                  _buildRejectButton(context),
                ],
              ),
            )
        ],
      ),
    );
  }
}
