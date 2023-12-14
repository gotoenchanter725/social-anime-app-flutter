import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/methods/utils.dart';

class MessagesParser {
  List<ChatMessage> parseMessages(List<Map<String, dynamic>> messages) {
    List<ChatMessage> parsedMessages = [];

    if (messages.isNotEmpty) {
      for (var message in messages) {
        AttachmentType attachmentType;
        if (message["attachmentType"] == "photo") {
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
          reaction = ReactionType.values.firstWhere(
              (e) => e.toString() == "ReactionType.${message["reaction"]}");
        }

        Recommendation? recommendation;
        if (message["recommendation"] != null &&
            message["recommendation"]["anime"] != null) {
          recommendation = Recommendation(
            userId: message["recommendation"]["userId"],
            recommendeeId: message["recommendation"]["recommendeeId"],
            animeId: message["recommendation"]["anime"]["id"],
            animeName: message["recommendation"]["anime"]["name"],
            animeImageUrl: message["recommendation"]["anime"]["imageUrl"],
          );
        }

        ChatMessage chatMessage = ChatMessage(
          id: message["id"],
          senderId: message["senderId"],
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
