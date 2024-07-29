import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

class StopVideoMatchBloc extends MutationBloc<StopVideoMatchmaking$Mutation> {
  StopVideoMatchBloc() : super(options: _stopVideoMatchMutationOptions());

  static WatchQueryOptions<Object?> _stopVideoMatchMutationOptions() {
    return WatchQueryOptions(
      document: STOP_VIDEO_MATCHMAKING_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  stopVideoMatch(String userId) {
    final variables = StopVideoMatchmakingArguments(
      input: StopVideoMatchmakingInput(
        userId: userId,
      ),
    ).toJson();
    run(variables);
  }

  @override
  StopVideoMatchmaking$Mutation parseData(Map<String, dynamic>? data) {
    return StopVideoMatchmaking$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
