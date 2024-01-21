import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

class MessagesParser {
  List<ChatMessage> parseMessages(List<dynamic> messages) {
    List<ChatMessage> parsedMessages = [];

    if (messages.isNotEmpty) {
      for (var message in messages) {
        AttachmentType attachmentType;
        if (message["attachmentType"] != null &&
            message["attachmentType"].contains("image/")) {
          attachmentType = AttachmentType.photo;
        } else {
          attachmentType = AttachmentType.video;
        }

        Sticker? sticker;
        if (message["sticker"] != null) {
          sticker = Sticker(
            id: message["sticker"]["id"],
            url: message["sticker"]["url"],
          );
        }

        ReactionType? reaction;
        if (message["reaction"] != null) {
          try {
            reaction = stringToReactionType(message["reaction"]);
          } catch (e) {
            logIt.error(e);
          }
        }

        Recommendation? recommendation;
        if (message["recommendation"] != null &&
            message["recommendation"]["anime"] != null) {
          recommendation = Recommendation(
            userId: message["recommendation"]["userId"].toString(),
            recommendeeId:
                message["recommendation"]["recommendeeId"].toString(),
            animeId: message["recommendation"]["anime"]["id"],
            animeName: message["recommendation"]["anime"]["title"],
            animeImageUrl: message["recommendation"]["anime"]["cover"],
          );
        }

        ChatMessage chatMessage = ChatMessage(
          id: message["id"],
          senderId: message["senderId"].toString(),
          text: message["content"],
          timestamp: parseTimezoneAwareDate(message["createdAt"]),
          isRead: message["read"],
          attachment: message["attachment"],
          attachmentType: attachmentType,
          sticker: sticker,
          reaction: reaction,
          recommendation: recommendation,
        );

        parsedMessages.add(chatMessage);
      }
    }

    return parsedMessages;
  }
}
