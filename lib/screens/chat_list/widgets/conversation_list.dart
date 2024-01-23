import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/user_avator.dart';
import 'package:senpai/models/chat/chat_conversation.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class ConversationList extends StatelessWidget {
  final List<ChatConversation> chatList;

  const ConversationList({super.key, required this.chatList});

  @override
  Widget build(BuildContext context) {
    chatList
        .sort((a, b) => a.lastMessageTime.compareTo(b.lastMessageTime) * -1);

    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return _buildConversationItem(context, chat);
      },
    );
  }

  Widget _buildConversationItem(BuildContext context, ChatConversation chat) {
    return InkWell(
      onTap: () {
        context.router.push(
          ChatRoute(
            roomArgs: ChatRoomParams(
              reciepient: chat.reciever,
              roomId: chat.id,
              currentUser: chat.currentUser,
              isOnline: chat.isOnline,
              createdDate: chat.roomCreationDate,
            ),
          ),
        );
      },
      child: SizedBox(
        width: double.infinity,
        height: 80.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            UserAvatar(
              imageUrl: chat.profileUrl,
              size: 56,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: $constants.insets.sm),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: $constants.palette.lightBlue,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 56.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chat.contactName,
                              style:
                                  getTextTheme(context).headlineSmall!.copyWith(
                                        color: $constants.palette.white,
                                      ),
                            ),
                            Text(
                              formatDateTime(chat.lastMessageTime),
                              style:
                                  getTextTheme(context).labelMedium!.copyWith(
                                        color: $constants.palette.grey,
                                      ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: getSize(context).width * 0.4,
                              child: Text(
                                chat.lastMessage,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    getTextTheme(context).bodyMedium!.copyWith(
                                          color: $constants.palette.white,
                                        ),
                              ),
                            ),
                            if (chat.unreadMessagesCount > 0)
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: $constants.palette.pink,
                                ),
                                child: Center(
                                  child: Text(
                                    chat.unreadMessagesCount.toString(),
                                    style: getTextTheme(context)
                                        .labelMedium!
                                        .copyWith(
                                          color: $constants.palette.white,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
