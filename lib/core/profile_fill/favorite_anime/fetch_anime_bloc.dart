import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class FetchAnimeBloc extends QueryBloc<FetchAnime$Query> {
  FetchAnimeBloc() : super(options: _fetchAnimeQueryOptions());

  static WatchQueryOptions<Object?> _fetchAnimeQueryOptions() {
    return WatchQueryOptions(
      document: FETCH_ANIME_QUERY_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  fetchAnime({required int page, String? title, List<String>? genres}) {
    final variables = FetchAnimeArguments(
      params: AnimeInput(
        genres: genres,
        page: page,
        title: title,
      ),
    ).toJson();

    run(variables: variables);
  }

  @override
  FetchAnime$Query parseData(Map<String, dynamic>? data) {
    return FetchAnime$Query.fromJson(data ?? <String, dynamic>{});
  }
}
