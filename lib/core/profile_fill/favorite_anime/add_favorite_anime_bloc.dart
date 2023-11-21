import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class AddFavoriteAnimeBloc extends MutationBloc<AddFavoriteAnime$Mutation> {
  AddFavoriteAnimeBloc() : super(options: _addFavoriteAnimeMutationOptions());

  static WatchQueryOptions<Object?> _addFavoriteAnimeMutationOptions() {
    return WatchQueryOptions(
      document: ADD_FAVORITE_ANIME_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  @override
  AddFavoriteAnime$Mutation parseData(Map<String, dynamic>? data) {
    return AddFavoriteAnime$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  addFavoriteAnimeList({
    required int userId,
    required List<String> animeIds,
  }) {
    final variables = AddFavoriteAnimeArguments(
      input: AddFavoriteAnimeInput(
        userId: '$userId',
        animeIds: animeIds,
      ),
    ).toJson();

    run(variables);
  }
}
