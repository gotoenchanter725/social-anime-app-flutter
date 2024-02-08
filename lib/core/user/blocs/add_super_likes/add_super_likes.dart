import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class AddSuperLikesBloc extends MutationBloc<AddSuperLikes$Mutation> {
  AddSuperLikesBloc() : super(options: _addSuperLikesMutationOptions());

  static WatchQueryOptions<Object?> _addSuperLikesMutationOptions() {
    return WatchQueryOptions(
      document: ADD_SUPER_LIKES_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  addSuperLikesInfo({
    required String userId,
    required int superLikeCount,
  }) {
    final variables = AddSuperLikesArguments(
      input: AddSuperLikesInput(
        userId: userId,
        amount: superLikeCount,
      ),
    ).toJson();

    run(variables);
  }

  @override
  AddSuperLikes$Mutation parseData(Map<String, dynamic>? data) {
    return AddSuperLikes$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
