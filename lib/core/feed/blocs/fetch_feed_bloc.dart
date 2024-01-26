import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/models/user_profile/profile_filter/profile_filter_model.dart';

@injectable
class FetchFeedBloc extends QueryBloc<FetchFeed$Query> {
  FetchFeedBloc() : super(options: _fetchFeedQueryOptions());

  static WatchQueryOptions<Object?> _fetchFeedQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_FEED_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  fetchFeed({
    required String userId,
    required ProfileFilterModel profileFilter,
    int? page,
    bool? refresh,
  }) {
    final variables = FetchFeedArguments(
      params: FetchFeedInput(
        userId: userId,
        page: page,
        milesAway: profileFilter.milesAway,
        maxAge: profileFilter.maxAge,
        minAge: profileFilter.minAge,
        verified: profileFilter.verified,
        hasBio: profileFilter.hasBio,
        animeIds: profileFilter.animeIds,
        refresh: refresh,
      ),
      otherUserId: userId,
    ).toJson();

    run(variables: variables);
  }

  @override
  FetchFeed$Query parseData(Map<String, dynamic>? data) {
    return FetchFeed$Query.fromJson(data ?? <String, dynamic>{});
  }
}
