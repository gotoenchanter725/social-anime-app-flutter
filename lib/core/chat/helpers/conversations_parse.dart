// import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/models/chat/chat_conversation.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/models/match/match_user_data.dart';
import 'package:senpai/utils/methods/utils.dart';

class ConversationsParser {
  CategorizedConversations parse(Map<String, dynamic>? data, String? userId) {
    if (data == null) {
      return CategorizedConversations(matches: [], activeConversations: []);
    }

    var conversations = data['fetchConversations'] as List<dynamic>;

    // Categorize conversations
    var matches = <MatchUserData>[];
    var activeConversations = <ChatConversation>[];

    for (var conversation in conversations) {
      late dynamic user;
      late dynamic reciever;
      dynamic match = conversation["match"];
      if (match["matchee"]["id"] == userId) {
        user = match["matchee"];
        reciever = match["user"];
      } else {
        user = match["user"];
        reciever = match["matchee"];
      }
      DateTime roomCreationDate = parseTimezoneAwareDate(match["createdAt"]);
      if (conversation["lastMessage"] == null) {
        matches.add(MatchUserData(
          id: conversation["id"],
          imageUrl: reciever["gallery"]["photos"][0]["url"],
          isOnline: reciever["onlineStatus"] == "offline" ? false : true,
          userName: reciever["firstName"],
          roomCreationDate: roomCreationDate,
          reciever: User(
            id: reciever["id"],
            name: reciever["firstName"],
            profileUrl: reciever["gallery"]["photos"][0]["url"],
            isOnline: reciever["onlineStatus"] == "offline" ? false : true,
          ),
          currentUser: User(
            id: user["id"],
            name: user["firstName"],
            profileUrl: user["gallery"]["photos"][0]["url"],
            isOnline: user["onlineStatus"] == "offline" ? false : true,
          ),
        ));
      } else {
        dynamic lastMessage = conversation["lastMessage"];
        String lastMessageContent = lastMessage["content"];
        if (lastMessage["recommendation"] != null) {
          lastMessageContent = R.strings.animationRecomedationText;
        }
        if (lastMessage["sticker"] != null) {
          lastMessageContent = R.strings.stickerMessageText;
        }
        if (lastMessage["attachment"] != null) {
          if (lastMessage["attachmentType"] == _gifAttachmentType) {
            lastMessageContent = R.strings.gifMessageText;
          } else {
            lastMessageContent = R.strings.attachmentMessageText;
          }
        }
        activeConversations.add(ChatConversation(
          id: conversation["id"],
          profileUrl: reciever["gallery"]["photos"][0]["url"],
          contactName: reciever["firstName"],
          lastMessage: lastMessageContent,
          lastMessageTime:
              parseTimezoneAwareDate(conversation["lastMessage"]["createdAt"]),
          unreadMessagesCount: conversation["unreadCount"],
          isOnline: reciever["onlineStatus"] == "offline" ? false : true,
          roomCreationDate: roomCreationDate,
          reciever: User(
            id: reciever["id"],
            name: reciever["firstName"],
            profileUrl: reciever["gallery"]["photos"][0]["url"],
            isOnline: reciever["onlineStatus"] == "offline" ? false : true,
          ),
          currentUser: User(
            id: user["id"],
            name: user["firstName"],
            profileUrl: user["gallery"]["photos"][0]["url"],
            isOnline: user["onlineStatus"] == "offline" ? false : true,
          ),
        ));
      }
    }

    // sort active conversations such that the conversation with the most recent message is always at index 0
    activeConversations
        .sort((a, b) => b.lastMessageTime.compareTo(a.lastMessageTime));

    return CategorizedConversations(
      matches: matches,
      activeConversations: activeConversations,
    );
  }
}

const String _gifAttachmentType = "image/gif";
