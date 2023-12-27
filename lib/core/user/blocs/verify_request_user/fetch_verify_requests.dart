import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class FetchVerifyRequestsBloc extends QueryBloc<FetchVerifyRequests$Query> {
  FetchVerifyRequestsBloc()
      : super(options: _fetchVerifyRequestsQueryOptions());

  static WatchQueryOptions<Object?> _fetchVerifyRequestsQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_VERIFY_REQUESTS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  fetchVerifyRequests({required int userId}) {
    final variables = FetchVerifyRequestsArguments(
      userId: '$userId',
    ).toJson();

    run(variables: variables);
  }

  @override
  FetchVerifyRequests$Query parseData(Map<String, dynamic>? data) {
    return FetchVerifyRequests$Query.fromJson(data ?? <String, dynamic>{});
  }
}
