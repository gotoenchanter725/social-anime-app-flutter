import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/match/blocs/find_video_match/find_video_chat_match_bloc.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/lobby/widgets/video_request_dialog.dart';
import 'package:senpai/screens/match/bloc/match_texture_bloc.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchTextureWidget extends StatelessWidget {
  const MatchTextureWidget({
    Key? key,
    this.onAccepted,
    this.onDeclined,
  }) : super(key: key);

  final Function()? onAccepted;
  final Function()? onDeclined;

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
              onPressed: onAccepted,
              child: Text(
                R.strings.acceptPromptText,
                style: const TextStyle(
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
        onPressed: onDeclined,
        child: Center(
          child: Text(
            R.strings.decline,
            style: const TextStyle(
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
    return BlocProvider(
      create: (context) => MatchTextureBloc()..add(StartMatchingEvent()),
      child: BlocListener<FindVideoChatMatchBloc, MutationState>(
        listener: (context, state) {
          state.whenOrNull(
            succeeded: (data, result) {
              // if match was found then tell the match texture bloc

              final matchUser =
                  context.read<FindVideoChatMatchBloc>().matchUser;
              if (matchUser != null) {
                showVideoRequestDialog(context, data);
              }
            },
          );
        },
        child: BlocBuilder<MatchTextureBloc, MatchTextureState>(
          builder: (context, state) {
            if (state is FindingMatchState) {
              return _buildFindingMatchUI(context, state);
            }
            return _buildMatchFoundUI(context);
          },
        ),
      ),
    );
  }

  Widget _buildFindingMatchUI(BuildContext context, FindingMatchState state) {
    return SizedBox(
      width: getSize(context).width,
      height: getWidthSize(context, 508 / 375),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            PathConstants.lobbyActionsBackground,
            fit: BoxFit.cover,
            width: getSize(context).width,
            height: getWidthSize(context, 508 / 375),
          ),
          Center(
            child: AnimatedOpacity(
              opacity: 0.8,
              duration: const Duration(milliseconds: 500),
              child: ClipOval(
                child: Image.asset(
                  PathConstants.matchingAnimation,
                  width: getSize(context).width - 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: getWidthSize(context, 0.5),
                  child: Text(
                    state.findingText,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getWidthSize(context, 0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMatchFoundUI(BuildContext context) {
    return SizedBox(
      width: getSize(context).width,
      height: getWidthSize(context, 508 / 375),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            PathConstants.lobbyActionsBackground,
            fit: BoxFit.cover,
            width: getSize(context).width,
            height: getWidthSize(context, 508 / 375),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  PathConstants.matchFoundIcon,
                  width: getWidthSize(context, 0.083),
                  height: getWidthSize(context, 0.083),
                ),
                SizedBox(height: getWidthSize(context, 0.037)),
                Text(
                  R.strings.matchFoundTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    // capitalise the text
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: (getSize(context).width - 100) * 1.3,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildAcceptButton(context),
                  SizedBox(height: getWidthSize(context, 0.07)),
                  _buildRejectButton(context),
                ],
              ))
        ],
      ),
    );
  }
}
