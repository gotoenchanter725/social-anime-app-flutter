import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

@injectable
class FetchLobbyCountBloc extends QueryBloc<FetchLobbyCount$Query> {
  FetchLobbyCountBloc() : super(options: _fetchLobbyCountQueryOptions());

  static WatchQueryOptions<Object?> _fetchLobbyCountQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_LOBBY_COUNT_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  int lobbyCount = 0;

  Future<void> fetchLobbyCount(int userId) async {
    final variables = FetchLobbyCountArguments(userId: userId).toJson();
    run(variables: variables);
  }

  @override
  FetchLobbyCount$Query parseData(Map<String, dynamic>? data) {
    final parsedData =
        FetchLobbyCount$Query.fromJson(data ?? <String, dynamic>{});
    lobbyCount = parsedData.fetchLobbyCount;
    return parsedData;
  }
}
