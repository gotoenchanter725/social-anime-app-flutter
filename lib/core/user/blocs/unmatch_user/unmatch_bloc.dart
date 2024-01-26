import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class UnmatchUserBloc extends MutationBloc<UnmatchUser$Mutation> {
  UnmatchUserBloc() : super(options: _unmatchUserMutationOptions());

  static WatchQueryOptions<Object?> _unmatchUserMutationOptions() {
    return WatchQueryOptions(
      document: UNMATCH_USER_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  unmatchUser({
    required String userId,
    required String blockedUserId,
  }) {
    final variables = UnmatchUserArguments(
      input: UnmatchUserInput(
        params: BlockUserInput(
          userId: userId,
          blockedUserId: blockedUserId,
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  UnmatchUser$Mutation parseData(Map<String, dynamic>? data) {
    return UnmatchUser$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
