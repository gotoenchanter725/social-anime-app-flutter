import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

@injectable
class DeleteFavoriteAnimeBloc
    extends MutationBloc<DeleteFavoriteAnime$Mutation> {
  DeleteFavoriteAnimeBloc()
      : super(options: _deleteFavoriteAnimeMutationOptions());

  static WatchQueryOptions<Object?> _deleteFavoriteAnimeMutationOptions() {
    return WatchQueryOptions(
      document: DELETE_FAVORITE_ANIME_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  @override
  DeleteFavoriteAnime$Mutation parseData(Map<String, dynamic>? data) {
    return DeleteFavoriteAnime$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  deleteFavoriteAnimeList({
    required int userId,
    required List<String> animeIds,
  }) {
    final variables = DeleteFavoriteAnimeArguments(
      input: DeleteFavoriteAnimeInput(
        userId: '$userId',
        animeIds: animeIds,
      ),
    ).toJson();

    run(variables);
  }
}
