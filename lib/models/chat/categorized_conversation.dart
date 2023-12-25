import 'package:senpai/models/chat/chat_conversation.dart';
import 'package:senpai/models/match/match_user_data.dart';

class CategorizedConversations {
  final List<MatchUserData> matches;
  final List<ChatConversation> activeConversations;

  CategorizedConversations({
    required this.matches,
    required this.activeConversations,
  });
}
