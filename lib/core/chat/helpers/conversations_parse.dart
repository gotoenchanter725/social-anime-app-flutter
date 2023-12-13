// import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/models/chat/chat_conversation.dart';
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
      dynamic user = conversation["match"]["user"];
      if (user["id"] == userId) {
        user = conversation["match"]["matchee"];
      }
      if (conversation["lastMessage"] == null) {
        matches.add(MatchUserData(
          id: conversation["id"],
          imageUrl: user["gallery"]["photos"][0]["url"],
          isOnline: user["onlineStatus"] == "offline" ? false : true,
          userName: user["firstName"],
        ));
      } else {
        activeConversations.add(ChatConversation(
          id: conversation["id"],
          profileUrl: user["gallery"]["photos"][0]["url"],
          contactName: user["firstName"],
          lastMessage: conversation["lastMessage"]["content"],
          lastMessageTime:
              parseTimezoneAwareDate(conversation["lastMessage"]["createdAt"]),
          unreadMessagesCount: conversation["unreadCount"],
          isOnline: user["onlineStatus"] == "offline" ? false : true,
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
