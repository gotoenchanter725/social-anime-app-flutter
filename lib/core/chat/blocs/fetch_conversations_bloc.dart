import 'dart:async';

import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:senpai/models/chat/chat_conversation.dart';
import 'package:senpai/models/match/match_user_data.dart';

@injectable
class FetchConversationsBloc extends QueryBloc<FetchConversations$Query> {
  Timer? _refetchTimer;
  final Duration refetchInterval;

  FetchConversationsBloc({this.refetchInterval = const Duration(seconds: 5)})
      : super(options: _fetchConversationsQueryOptions());

  static WatchQueryOptions<Object?> _fetchConversationsQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_CONVERSATIONS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  void startPeriodicFetch() {
    _refetchTimer?.cancel(); // Cancel any existing timer
    _refetchTimer = Timer.periodic(refetchInterval, (_) {
      refetch();
    });
  }

  void stopPeriodicFetch() {
    _refetchTimer?.cancel();
  }

  @override
  void dispose() {
    _refetchTimer?.cancel();
    super.dispose();
  }

  fetchConversation() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    if (authModel == null) {
      return "Could not find a signed in user";
    }
    final variables = FetchUserArguments(
      userId: authModel.user.id,
    ).toJson();

    run(variables: variables);
    return "Success";
  }

  @override
  FetchConversations$Query parseData(Map<String, dynamic>? data) {
    Map<String, dynamic> responseJson =
        FetchConversations$Query.fromJson(data ?? <String, dynamic>{})
            as Map<String, dynamic>;
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
    ) as FetchConversations$Query;
  }
}
