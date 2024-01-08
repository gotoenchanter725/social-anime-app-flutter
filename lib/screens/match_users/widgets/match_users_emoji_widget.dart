import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/screens/match_users/bloc/match_users_bloc.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchUsersEmojiWidget extends StatelessWidget {
  const MatchUsersEmojiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all($constants.insets.sm),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildEmotion(context, '👋'),
          _buildEmotion(context, '😻'),
          _buildEmotion(context, '❤'),
          _buildEmotion(context, '😉'),
        ],
      ),
    );
  }

  Widget _buildEmotion(BuildContext context, String emotion) {
    final bloc = BlocProvider.of<MatchUsersBloc>(context);
    final sendMessageBloc = BlocProvider.of<SendMessageBloc>(context);
    return OutlinedButton(
      onPressed: () {
        sendMessageBloc.sendMessage(
          message: emotion,
          conversationId: bloc.likeUserModel.match?.conversation?.id ?? '',
          senderId: bloc.likeUserModel.like.userId.toString(),
        );
      },
      style: TextButton.styleFrom(
        elevation: 0,
        side: BorderSide(
          color: $constants.palette.white.withOpacity(0.2),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular($constants.insets.xxl),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: $constants.insets.md,
          vertical: $constants.corners.xs,
        ),
      ),
      child: Text(
        emotion,
        style: getTextTheme(context).headlineMedium,
      ),
    );
  }
}
