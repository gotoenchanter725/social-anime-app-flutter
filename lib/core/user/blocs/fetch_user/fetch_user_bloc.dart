import 'dart:developer';

import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';

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

  fetchCurrentUser() {
    final storage = getIt<TokenStorage<AuthModel>>();
    storage.read().then((authModel) {
      if (authModel != null) {
        fetchUser(userId: int.parse(authModel.user.id));
      }
    });
  }

  @override
  FetchUser$Query parseData(Map<String, dynamic>? data) {
    log('fetch user sata: $data');
    return FetchUser$Query.fromJson(data ?? <String, dynamic>{});
  }
}
