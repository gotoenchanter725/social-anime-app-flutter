import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/models/chat/chat_conversation.dart';
import 'package:senpai/models/match/match_user_data.dart';

class ConversationsParser {
  CategorizedConversations parse(Map<String, dynamic>? data) {
    if (data == null) {
      return CategorizedConversations(matches: [], activeConversations: []);
    }

    Map<String, dynamic> responseJson =
        FetchConversations$Query.fromJson(data) as Map<String, dynamic>;
    var conversations = responseJson['data'] as List<dynamic>;

    // Categorize conversations
    var matches = <MatchUserData>[];
    var activeConversations = <ChatConversation>[];

    for (var conversation in conversations) {
      dynamic user = conversation["match"]["user"];
      if (conversation.messages.isEmpty) {
        matches.add(MatchUserData(
          id: conversation["id"],
          imageUrl: user["gallery"]["photos"][0]["url"],
          isOnline: user["isOnline"],
          userName: user["firstName"],
        ));
      } else {
        List<dynamic> messages = conversation["messages"];

        // sort message such that the last message sent is always at index 0
        messages.sort((a, b) => DateTime.parse(b["createdAt"])
            .compareTo(DateTime.parse(a["createdAt"])));

        int unreadMessagesCount = 0;

        for (var message in conversation["messages"]) {
          if (!message["read"]) {
            unreadMessagesCount++;
          }
        }

        activeConversations.add(ChatConversation(
          id: conversation["id"],
          profileUrl: user["gallery"]["photos"][0]["url"],
          contactName: user["firstName"],
          lastMessage: messages[0]["content"],
          lastMessageTime: DateTime.parse(messages[0]["createdAt"]),
          unreadMessagesCount: unreadMessagesCount,
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
