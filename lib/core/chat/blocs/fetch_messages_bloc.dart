import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/chat/helpers/messages_parse.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/methods/aliases.dart';

class FetchMessagesBloc extends QueryBloc<FetchMessages$Query> {
  List<ChatMessage> messages = [];

  final MessagesParser _messagesParser = MessagesParser();

  final String conversationId;

  int currentPage = 1;

  FetchMessagesBloc(this.conversationId)
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

  Future<void> fetchMessages(String conversationId) async {
    // This always fetches the first page of messages
    currentPage = 1;
    final variables = FetchMessagesArguments(
      conversationId: conversationId,
      page: currentPage,
    ).toJson();
    run(variables: variables);
  }

  void addMessage(ChatMessage message) {
    messages.insert(0, message);
  }

  @override
  bool shouldFetchMore(int i, int threshold) {
    return state.maybeWhen(
      loaded: (data, result) {
        try {
          Map<String, dynamic>? messagesJson = data!.toJson();
          List<dynamic>? messagesJsonList = messagesJson['fetchMessages'];
          if (messagesJsonList == null) {
            return false;
          }
          final List<ChatMessage> messages =
              _messagesParser.parseMessages(messagesJsonList);
          return messages.length >= threshold;
        } catch (e) {
          logIt.error(e);
          return false;
        }
      },
      orElse: () => false,
    );
  }

  void fetchNextPage() {
    currentPage++;
    add(
      QueryEvent.fetchMore(
        options: FetchMoreOptions(
          variables: FetchMessagesArguments(
            conversationId: conversationId,
            page: currentPage,
          ).toJson(),
          updateQuery: (previousResultData, fetchMoreResultData) {
            final prevResultData =
                previousResultData?['fetchMessages'] as List<dynamic>;
            final moreResultData =
                fetchMoreResultData?['fetchMessages'] as List<dynamic>;

            final repos = <dynamic>[...prevResultData, ...moreResultData];

            fetchMoreResultData?['fetchMessages'] = repos;

            return fetchMoreResultData;
          },
        ),
      ),
    );
  }

  @override
  FetchMessages$Query parseData(Map<String, dynamic>? data) {
    messages = _messagesParser.parseMessages(data!["fetchMessages"]);

    return FetchMessages$Query.fromJson(data);
  }
}
