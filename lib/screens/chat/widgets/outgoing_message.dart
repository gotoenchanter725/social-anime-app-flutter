import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:senpai/core/widgets/anime/anime_tile.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/models/profile_fill/anime/anime_model.dart';
import 'package:senpai/screens/chat/widgets/video_preview.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class OutgoingMessage extends StatelessWidget {
  final ChatMessage message;

  const OutgoingMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: $constants.insets.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8),
                child: _buildMessageContent(context),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                DateFormat('hh:mm').format(message.timestamp),
                style: getTextTheme(context)
                    .labelMedium!
                    .copyWith(color: $constants.palette.grey),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMessageContent(BuildContext context) {
    if (message.attachment != null) {
      return _buildAttachmentMessage(context);
    }

    if (message.recommendation != null) {
      return _buildAnimeMessage(context);
    }

    if (message.sticker != null) {
      return _buildStickerMessage(context);
    }
    return _buildTextMessage(context);
  }

  Widget _buildTextMessage(BuildContext context) {
    return _buildChatBubble(
      context,
      _buildTextWidget(context),
    );
  }

  Widget _buildAnimeMessage(BuildContext context) {
    return _buildChatBubble(
      context,
      _buildAnimeWidget(context),
    );
  }

  Widget _buildAttachmentMessage(BuildContext context) {
    if (message.attachmentType == AttachmentType.photo) {
      return _buildPhotoMessage(context);
    }

    if (message.attachmentType == AttachmentType.video) {
      return _buildVideoMessage(context);
    }

    return const SizedBox.shrink();
  }

  Widget _buildPhotoMessage(BuildContext context) {
    return _buildChatBubble(
      context,
      _buildPhotoWidget(context),
    );
  }

  Widget _buildVideoMessage(BuildContext context) {
    return _buildChatBubble(
      context,
      _buildVideoWidget(context),
    );
  }

  Widget _buildVideoWidget(BuildContext context) {
    return AttachedVideoViewer(
      width: getSize(context).width * 0.7,
      height: getSize(context).width * 0.7,
      videoUrl: message.attachment!,
      message: message,
    );
  }

  Widget _buildPhotoWidget(BuildContext context) {
    // Determine if the attachment is a local file or a network URL.
    String attachment = message.attachment!;
    bool isLocalFile = Uri.tryParse(attachment)?.hasScheme != true;

    // Create the appropriate image provider based on the attachment type.
    ImageProvider imageProvider;
    if (isLocalFile) {
      imageProvider = FileImage(File(attachment));
    } else {
      imageProvider = NetworkImage(attachment);
    }

    return Container(
      width: getSize(context).width * 0.7,
      height: getSize(context).width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular($constants.corners.lg),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAnimeWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: getSize(context).width * 0.8,
          child: AnimeTile(
            anime: AnimeModel(
              id: message.recommendation!.animeId,
              cover: message.recommendation!.animeImageUrl,
              title: message.recommendation!.animeName,
            ),
            hasBackground: true,
            locale: null,
            hasHeight: false,
          ),
        ),
        SizedBox(
          height: $constants.insets.xs,
        ),
        _buildTextWidget(context)
      ],
    );
  }

  Widget _buildTextWidget(BuildContext context) {
    return Text(
      message.text,
      style: getTextTheme(context).bodySmall!.copyWith(
            color: $constants.palette.white,
            letterSpacing: 0,
          ),
      softWrap: true,
    );
  }

  Widget _buildStickerMessage(BuildContext context) {
    final double size = getSize(context).width * 0.341;
    return Image.network(
      message.sticker!.url,
      width: size,
      height: size,
      fit: BoxFit.contain,
    );
  }

  Widget _buildChatBubble(BuildContext context, Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: $constants.palette.lightBlue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular($constants.corners.lg),
          topRight: Radius.circular($constants.corners.lg),
          bottomRight: Radius.zero,
          bottomLeft: Radius.circular($constants.corners.lg),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: $constants.insets.sm,
          vertical: $constants.insets.xs,
        ),
        child: child,
      ),
    );
  }
}
