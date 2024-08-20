import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

@injectable
class FetchAvatarsShopBloc extends QueryBloc<FetchAvatars$Query> {
  FetchAvatarsShopBloc() : super(options: _fetchAvatarsShopQueryOptions());

  static WatchQueryOptions<Object?> _fetchAvatarsShopQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_AVATARS_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  fetchAvatarsShop({
    required int userId,
    required int page,
    String? query,
    String? gender,
  }) {
    final variables = FetchAvatarsArguments(
      userId: userId,
      query: query,
      page: page,
      gender: gender,
    ).toJson();

    run(variables: variables);
  }

  @override
  FetchAvatars$Query parseData(Map<String, dynamic>? data) {
    return FetchAvatars$Query.fromJson(data ?? <String, dynamic>{});
  }
}
