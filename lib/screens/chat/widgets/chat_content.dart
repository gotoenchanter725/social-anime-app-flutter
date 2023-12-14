import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/widgets/messages_list.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatContent extends StatelessWidget {
  const ChatContent(
      {super.key, required this.currentUser, required this.receipientUser});

  final User receipientUser;

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
      child: Column(
        children: [
          _buildChatHeader(context),
          _buildMessagesList(context),
          SizedBox(
            height: $constants.insets.sm,
          ),
          _buildInput(context),
          SizedBox(
            height: $constants.insets.sm,
          ),
        ],
      ),
    );
  }

  Widget _buildMessagesList(BuildContext context) {
    FetchMessagesBloc bloc = BlocProvider.of<FetchMessagesBloc>(context);

    return BlocBuilder(builder: (context, state) {
      return MessagesList(
        messages: bloc.messages,
        currentUserId: currentUser.id,
        recieverUserId: receipientUser.id,
      );
    });
  }

  Widget _buildChatHeader(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SenpaiIconButton(
              onPressed: () {
                context.router.pop();
              },
              iconPath: PathConstants.backIcon,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  receipientUser.name,
                  style: getTextTheme(context).headlineSmall!.copyWith(
                        color: $constants.palette.white,
                      ),
                ),
                Text(
                  receipientUser.isOnline
                      ? TextConstants.userOnlineText
                      : TextConstants.userOfflineText,
                  style: getTextTheme(context).labelMedium!.copyWith(
                        color: $constants.palette.grey,
                      ),
                ),
              ],
            ),
            UserAvatar(
              imageUrl: receipientUser.profileUrl,
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInput(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            height: 48,
            width: double.infinity,
            decoration: BoxDecoration(
              color: $constants.palette.lightBlue,
              borderRadius: BorderRadius.circular($constants.corners.xxl),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: $constants.insets.md,
                right: $constants.insets.sm,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: null,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: TextConstants.chatInputHint,
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
                    onTap: () {},
                    child: SvgPicture.asset(
                      PathConstants.stickerIcon,
                      width: 24.0,
                      height: 24.0,
                    ),
                  )
                ],
              ),
            ),
          )),
          Padding(
            padding: EdgeInsets.only(left: $constants.corners.md),
            child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: $constants.palette.pink,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      PathConstants.sendIcon,
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
