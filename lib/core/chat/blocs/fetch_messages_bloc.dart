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

  int lastCheckedPage = 0;

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
    lastCheckedPage = 0;
    final variables = FetchMessagesArguments(
      conversationId: conversationId,
      page: currentPage,
    ).toJson();
    run(variables: variables);
  }

  void addMessage(ChatMessage message) {
    messages.insert(0, message);
  }

  // The parameter i stands for the index of the item that is about to be rendered
  @override
  bool shouldFetchMore(int i, int threshold) {
    return state.maybeWhen(
      loaded: (data, result) {
        try {
          // check that the index is a multiple of the threshold to fetch more
          // this is to make sure that each page is fetched only once
          final int currentMessageCount = i + 1;
          if (currentMessageCount % threshold != 0) {
            return false;
          }

          // check if the last page is the same as the current page
          if (lastCheckedPage == currentPage) {
            return false;
          }

          // check that the index is within the bounds of the list
          if (i >= messages.length) {
            return false;
          }

          // parse the messages and check if the length is greater than the threshold

          if (messages.isEmpty) {
            return false;
          }

          // check if the last page is full
          // if the last page is not full, then there are no more messages to fetch
          if (messages.length % threshold != 0) {
            return false;
          }

          logIt.info("Fetching more messages");

          // if all the conditions are met, return true
          return true;
        } catch (e) {
          logIt.error(e);
          return false;
        }
      },
      orElse: () => false,
    );
  }

  void fetchNextPage() {
    lastCheckedPage = currentPage;
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
