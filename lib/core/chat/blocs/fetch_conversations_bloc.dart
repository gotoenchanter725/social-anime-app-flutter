import 'dart:async';

import 'package:fresh_dio/fresh_dio.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';

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
    return FetchConversations$Query.fromJson(data ?? <String, dynamic>{});
  }
}
