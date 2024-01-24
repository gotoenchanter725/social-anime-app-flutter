import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class UndoLikeUserBloc extends MutationBloc<UndoLike$Mutation> {
  UndoLikeUserBloc() : super(options: _undoLikeMutationOptions());

  static WatchQueryOptions<Object?> _undoLikeMutationOptions() {
    return WatchQueryOptions(
      document: UNDO_LIKE_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  undoLikeUser({required String userId}) {
    final variables = UndoLikeArguments(
      input: UndoLikeInput(
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  UndoLike$Mutation parseData(Map<String, dynamic>? data) {
    return UndoLike$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
