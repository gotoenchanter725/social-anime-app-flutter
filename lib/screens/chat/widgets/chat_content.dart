import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/widgets/bottom_sheet/animated_bottom_sheet.dart';
import 'package:senpai/core/widgets/bottom_sheet/bottom_sheet_bloc.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/bloc/pending_messages_bloc/pending_messages_bloc.dart';
import 'package:senpai/screens/chat/bloc/text_editing_bloc/text_editing_bloc.dart';
import 'package:senpai/screens/chat/widgets/attachments_bottom_sheet.dart';
import 'package:senpai/screens/chat/widgets/chat_bottom_sheet_content.dart';
import 'package:senpai/screens/chat/widgets/empty_messages.dart';
import 'package:senpai/screens/chat/widgets/messages_list.dart';
import 'package:senpai/screens/chat/widgets/pop_up_menu_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class ChatContent extends StatelessWidget {
  const ChatContent({
    super.key,
    required this.currentUser,
    required this.receipientUser,
    required this.roomCreationDate,
    required this.roomId,
  });

  final User receipientUser;

  final User currentUser;

  final DateTime roomCreationDate;

  final String roomId;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
          child: Column(
            children: [
              _buildChatHeader(context),
              BlocBuilder<FetchMessagesBloc, QueryState>(
                builder: (context, state) {
                  return BlocBuilder<PendingMessagesBloc, PendingMessagesState>(
                    builder: (context, state) {
                      return _buildMessagesList(context);
                    },
                  );
                },
              ),
              SizedBox(
                height: $constants.insets.sm,
              ),
              _buildInput(context),
              SizedBox(
                height: $constants.insets.sm,
              ),
            ],
          ),
        ),
        _buildBottomSheet(context),
      ],
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return AnimatedBottomSheetWidget(
      height: getSize(context).height * 0.6,
      child: ChatBottomSheetContent(
        onMessageSent: (message) {
          _addPendingMessage(context, message);
        },
        currentUser: currentUser,
        receipientUser: receipientUser,
      ),
    );
  }

  void _addPendingMessage(BuildContext context, ChatMessage message) {
    try {
      PendingMessagesBloc pendingMessagesBloc =
          BlocProvider.of<PendingMessagesBloc>(context);
      pendingMessagesBloc.add(
        PendingMessagesEvent.addMessage(
          channelId: roomId,
          message: message,
        ),
      );
    } catch (e) {
      logIt.error("Error adding pending message: $e");
    }
  }

  Widget _buildMessagesList(BuildContext context) {
    FetchMessagesBloc bloc = BlocProvider.of<FetchMessagesBloc>(context);

    return BlocBuilder<FetchMessagesBloc, QueryState>(
      builder: (context, state) {
        return state.maybeWhen<Widget>(
          orElse: () {
            PendingMessagesBloc pendingMessagesBloc =
                BlocProvider.of<PendingMessagesBloc>(context);

            List<ChatMessage> allMessages = [
              ...bloc.messages,
              ...pendingMessagesBloc.messageQueueMap[roomId] ?? []
            ];

            logIt.info(
                "Pending messages are now: ${pendingMessagesBloc.messageQueueMap[roomId]}");

            if (allMessages.isEmpty) {
              return EmptyMessages(
                avatorImagePath: receipientUser.profileUrl,
                title: "${R.strings.emptyChatTitle} ${receipientUser.name}",
                subtitle:
                    "${timeAgo(roomCreationDate)}. \n${R.strings.emptyChatPromptText}",
              );
            }

            return Expanded(
              child: MessagesList(
                messages: allMessages,
                currentUser: currentUser,
                recieverUser: receipientUser,
              ),
            );
          },
          loading: (_) {
            return const Expanded(child: SenpaiLoading());
          },
        );
      },
    );
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
                      ? R.strings.userOnlineText
                      : R.strings.userOfflineText,
                  style: getTextTheme(context).labelMedium!.copyWith(
                        color: $constants.palette.grey,
                      ),
                ),
              ],
            ),
            PopUpMenuWidget(
              currentUserId: currentUser.id,
              receipientUser: receipientUser,
              roomId: roomId,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(BuildContext context) {
    final textEditingBloc = BlocProvider.of<TextEditingBloc>(context);

    // This will help pass down context to bottom sheet content
    final pageContext = context;

    return BlocBuilder<TextEditingBloc, TextEditingState>(
      builder: (context, state) {
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
                          controller: textEditingBloc.controller,
                          onChanged: (text) => textEditingBloc
                              .add(MessageChanged(message: text)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: R.strings.chatInputHint,
                            hintStyle:
                                getTextTheme(context).bodySmall!.copyWith(
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
                          // Hide the keyboard before showing the bottom sheet
                          FocusScope.of(context).unfocus();
                          // show bottom sheet with attachments
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return AttachmentsBottomSheet(
                                onMediaSelected: (media) {
                                  _sendAttachment(pageContext, media);
                                },
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.attachment_outlined,
                          size: 24.0,
                          color: $constants.palette.white,
                        ),
                      ),
                      SizedBox(
                        width: $constants.insets.xs,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Hide the keyboard before showing the bottom sheet
                          FocusScope.of(context).unfocus();
                          final BottomSheetBloc bottomSheetBloc =
                              BlocProvider.of<BottomSheetBloc>(context);
                          bottomSheetBloc.show();
                        },
                        child: SvgPicture.asset(
                          PathConstants.stickerIcon,
                          width: 24.0,
                          height: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Padding(
                padding: EdgeInsets.only(left: $constants.corners.md),
                child: GestureDetector(
                    onTap: () {
                      if (state.message.trim().isNotEmpty) {
                        final message = ChatMessage(
                          id: generateRandomId(
                              $constants.specials.pendingMessageIdLength),
                          senderId: currentUser.id,
                          text: state.message,
                          timestamp: DateTime.now(),
                        );
                        _addPendingMessage(context, message);
                        textEditingBloc.add(MessageCleared());
                      } else {
                        logIt.error("Message is empty");
                      }
                    },
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
      },
    );
  }

  void _sendAttachment(BuildContext context, XFile media) async {
    logIt.info("Media selected: ${media.path}");
    // check that media doesn't exceed the maximum size
    final int mediaSize = await media.length();
    const int bytesInMB = 1048576;
    final int mediaSizeInMB = mediaSize ~/ bytesInMB;
    if (mediaSizeInMB > $constants.api.maxSizeForAttachmentsInMB) {
      showSnackBarError(context, R.strings.maximumAttachmentSizeExceededError);
      logIt.error("Media size exceeds the maximum size :: $mediaSize Bytes");
      return;
    }
    AttachmentType attachmentType = AttachmentType.photo;
    if (isVideo(media)) {
      attachmentType = AttachmentType.video;
    }

    final composedMessage = ChatMessage(
      id: generateRandomId($constants.specials.pendingMessageIdLength),
      text: R.strings.attachmentMessageText,
      status: MessageStatus.pending,
      senderId: currentUser.id,
      timestamp: DateTime.now(),
      attachment: media.path,
      attachmentType: attachmentType,
    );

    _addPendingMessage(
      context,
      composedMessage,
    );
  }
}
