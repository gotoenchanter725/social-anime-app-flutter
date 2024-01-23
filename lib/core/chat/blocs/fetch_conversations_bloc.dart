import 'dart:async';

import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/chat/helpers/conversations_parse.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';

// We are using the long polling technique to fetch new messages
// from the server. This is a very simple implementation of the
// long polling technique. We are using 30 seconds as the interval
// to fetch new messages from the server. This is not the best
// implementation of the long polling technique. We are using this
// implementation because it is simple and it works.

class FetchConversationsBloc extends QueryBloc<FetchConversations$Query> {
  final Duration refetchInterval;

  late AuthModel _authModel;

  FetchConversationsBloc({this.refetchInterval = const Duration(seconds: 30)})
      : super(options: _fetchConversationsQueryOptions()) {
    _initialize();
  }

  static WatchQueryOptions<Object?> _fetchConversationsQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_CONVERSATIONS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  void _initialize() {
    _fetchAuthModel();
  }

  Future<void> _fetchAuthModel() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    if (authModel == null) {
      throw Exception("Could not find a signed in user");
    }
    _authModel = authModel;
    final variables = FetchUserArguments(userId: authModel.user.id).toJson();
    run(variables: variables);
  }

  final _conversationsParser = ConversationsParser();
  CategorizedConversations conversations = CategorizedConversations(
    matches: [],
    activeConversations: [],
  );

  Future<void> fetchConversation() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    if (authModel == null) {
      throw Exception("Could not find a signed in user");
    }
    _authModel = authModel;
    final variables = FetchUserArguments(userId: authModel.user.id).toJson();
    run(variables: variables);
  }

  @override
  FetchConversations$Query parseData(Map<String, dynamic>? data) {
    try {
      conversations = _conversationsParser.parse(data, _authModel.user.id);
    } catch (e) {
      print(e);
    }

    return FetchConversations$Query.fromJson(data ?? <String, dynamic>{});
  }
}
