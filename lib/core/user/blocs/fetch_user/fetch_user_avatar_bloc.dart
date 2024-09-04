import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/auth/auth_model.dart';

@injectable
class FetchUserAvatarsBloc extends QueryBloc<FetchUserAvatars$Query> {
  FetchUserAvatarsBloc() : super(options: _fetchUserAvatarsQueryOptions());

  static WatchQueryOptions<Object?> _fetchUserAvatarsQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_USER_AVATARS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  fetchUserAvatars() async {
    final storage = getIt<TokenStorage<AuthModel>>();
    var data = await storage.read();
    if (data != null) {
      var userId = data.user.id;
      print("userId: $userId");
      final variables = FetchUserAvatarsArguments(userId: userId).toJson();
      run(variables: variables);
    }
  }

  @override
  FetchUserAvatars$Query parseData(Map<String, dynamic>? data) {
    return FetchUserAvatars$Query.fromJson(data ?? <String, dynamic>{});
  }
}
