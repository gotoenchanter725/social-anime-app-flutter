import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class LikeUserBloc extends MutationBloc<LikeUser$Mutation> {
  LikeUserBloc() : super(options: _likeUserMutationOptions());

  static WatchQueryOptions<Object?> _likeUserMutationOptions() {
    return WatchQueryOptions(
      document: LIKE_USER_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  likeUser({
    required int userId,
    required int likeeId,
    required String likeType,
  }) {
    final variables = LikeUserArguments(
      input: LikeUserInput(
          params: LikeInput(
        userId: userId,
        likeeId: likeeId,
        likeType: likeType,
      )),
    ).toJson();

    run(variables);
  }

  @override
  LikeUser$Mutation parseData(Map<String, dynamic>? data) {
    return LikeUser$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
