import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/models/user_profile/mappers/user_spotify_mapper.dart';
import 'package:senpai/models/user_profile/user_favorite_music/user_favorite_music_model.dart';

@injectable
class AddFavoriteMusicBloc extends MutationBloc<AddFavoriteMusic$Mutation> {
  AddFavoriteMusicBloc() : super(options: _addFavoriteMusicMutationOptions());

  static WatchQueryOptions<Object?> _addFavoriteMusicMutationOptions() {
    return WatchQueryOptions(
      document: ADD_FAVORITE_MUSIC_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  addFavoriteMusicList({
    required int userId,
    required List<UserFavoriteMusicModel> listFavoriteMusic,
  }) {
    final variables = AddFavoriteMusicArguments(
      input: AddFavoriteMusicInput(
        params: listFavoriteMusic
            .map((music) => music.toUserFavoriteMusicInput(userId))
            .toList(),
      ),
    ).toJson();

    run(variables);
  }

  @override
  AddFavoriteMusic$Mutation parseData(Map<String, dynamic>? data) {
    return AddFavoriteMusic$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
