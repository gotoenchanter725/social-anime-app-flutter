import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/match_users/bloc/match_users_bloc.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class MatchSendMessageContent extends StatelessWidget {
  const MatchSendMessageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchUsersBloc, MatchUsersState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<MatchUsersBloc>(context);
        final bool hasFocus = bloc.hasFocusNode;
        return Stack(
          children: [
            if (hasFocus)
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: $constants.match.blur,
                  sigmaY: $constants.match.blur,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: $constants.palette.black.withOpacity(0.4),
                  ),
                ),
              ),
            Container(
              margin: EdgeInsets.only(
                bottom:
                    hasFocus ? $constants.insets.xs : $constants.insets.offset,
                left: $constants.insets.sm,
                right: $constants.insets.sm,
              ),
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: _buildInput(context),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildInput(BuildContext context) {
    final bloc = BlocProvider.of<MatchUsersBloc>(context);
    final sendMessageBloc = BlocProvider.of<SendMessageBloc>(context);

    return Container(
      height: $constants.insets.xl,
      width: double.infinity,
      decoration: BoxDecoration(
        color: $constants.palette.lightBlue,
        borderRadius: BorderRadius.circular($constants.corners.xxl),
      ),
      padding: EdgeInsets.only(
        left: $constants.insets.md,
        right: $constants.insets.sm,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: bloc.messageController,
              onChanged: (String message) {
                bloc.add(OnMessageChangedEvent(message: message));
              },
              maxLines: null,
              onTapOutside: (_) {
                Focus.of(context).unfocus();
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: R.strings.saySomethingNiceText,
                hintStyle: getTextTheme(context).bodySmall!.copyWith(
                      color: $constants.palette.darkGrey,
                      letterSpacing: 0.25,
                    ),
              ),
              style: getTextTheme(context).bodySmall!.copyWith(
                    color: $constants.palette.white,
                    letterSpacing: 0.25,
                  ),
            ),
          ),
          GestureDetector(
            onTap: () {
              sendMessageBloc.sendMessage(
                message: bloc.message,
                conversationId:
                    bloc.likeUserModel.match?.conversation?.id ?? '',
                senderId: bloc.likeUserModel.like.userId.toString(),
              );
            },
            child: Text(
              R.strings.sendButton,
              style: getTextTheme(context).bodySmall?.copyWith(
                    letterSpacing: 0,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
