import 'dart:async';

import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/chat/helpers/conversations_parse.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';

@injectable
class FetchConversationsBloc extends QueryBloc<FetchConversations$Query> {
  final Duration refetchInterval;

  FetchConversationsBloc({this.refetchInterval = const Duration(seconds: 5)})
      : super(options: _fetchConversationsQueryOptions());

  static WatchQueryOptions<Object?> _fetchConversationsQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_CONVERSATIONS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  final _conversationsParser = ConversationsParser();
  Timer? _refetchTimer;

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

  Future<void> fetchConversation() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    if (authModel == null) {
      throw Exception("Could not find a signed in user");
    }
    final variables = FetchUserArguments(userId: authModel.user.id).toJson();
    run(variables: variables);
  }

  @override
  FetchConversations$Query parseData(Map<String, dynamic>? data) {
    return _conversationsParser.parse(data) as FetchConversations$Query;
  }
}
