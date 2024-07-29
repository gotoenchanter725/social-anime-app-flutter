import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

class StartVideoMatchBloc extends MutationBloc<StartVideoMatchmaking$Mutation> {
  StartVideoMatchBloc() : super(options: _startVideoMatchMutationOptions());

  static WatchQueryOptions<Object?> _startVideoMatchMutationOptions() {
    return WatchQueryOptions(
      document: START_VIDEO_MATCHMAKING_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  startVideoMatch(String userId) {
    final variables = StartVideoMatchmakingArguments(
      input: StartVideoMatchmakingInput(
        userId: userId,
      ),
    ).toJson();
    run(variables);
  }

  @override
  StartVideoMatchmaking$Mutation parseData(Map<String, dynamic>? data) {
    return StartVideoMatchmaking$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
