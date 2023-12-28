import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

@injectable
class DeleteFavoriteMusicBloc
    extends MutationBloc<DeleteFavoriteMusic$Mutation> {
  DeleteFavoriteMusicBloc()
      : super(options: _deleteFavoriteMusicMutationOptions());

  static WatchQueryOptions<Object?> _deleteFavoriteMusicMutationOptions() {
    return WatchQueryOptions(
      document: DELETE_FAVORITE_MUSIC_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  @override
  DeleteFavoriteMusic$Mutation parseData(Map<String, dynamic>? data) {
    return DeleteFavoriteMusic$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  deleteFavoriteMusicList({
    required int userId,
    required List<String> musicIds,
  }) {
    final variables = DeleteFavoriteMusicArguments(
      input: DeleteFavoriteMusicInput(
        userId: '$userId',
        musicIds: musicIds,
      ),
    ).toJson();

    run(variables);
  }
}
