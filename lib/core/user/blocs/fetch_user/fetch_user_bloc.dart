import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class FetchUserBloc extends QueryBloc<FetchUser$Query> {
  FetchUserBloc() : super(options: _fetchUserQueryOptions());

  static WatchQueryOptions<Object?> _fetchUserQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_USER_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  fetchUser({required int userId}) {
    final variables = FetchUserArguments(
      userId: '$userId',
    ).toJson();

    log("user fetch message: $variables");
    run(variables: variables);
  }

  @override
  FetchUser$Query parseData(Map<String, dynamic>? data) {
    print('fetch user sata: $data');
    return FetchUser$Query.fromJson(data ?? <String, dynamic>{});
  }
}
