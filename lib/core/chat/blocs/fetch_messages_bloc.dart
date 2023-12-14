import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/chat/helpers/messages_parse.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/chat_message.dart';

class FetchMessagesBloc extends QueryBloc<FetchMessages$Query> {
  List<ChatMessage> messages = [];

  final MessagesParser _messagesParser = MessagesParser();

  FetchMessagesBloc({required String conversationId})
      : super(options: _fetchMessagesQueryOptions(conversationId));

  static WatchQueryOptions<Object?> _fetchMessagesQueryOptions(
      String conversationId) {
    return WatchQueryOptions(
      document: FETCH_MESSAGES_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
      variables:
          FetchMessagesArguments(conversationId: conversationId).toJson(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> fetchMessages(String conversationId) async {
    final variables =
        FetchMessagesArguments(conversationId: conversationId, page: 1)
            .toJson();
    run(variables: variables);
  }

  @override
  FetchMessages$Query parseData(Map<String, dynamic>? data) {
    messages = _messagesParser.parseMessages(data!["fetchMessages"]);
    return FetchMessages$Query.fromJson(data);
  }
}
