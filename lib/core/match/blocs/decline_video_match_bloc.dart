import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

class DeclineVideoMatchBloc extends MutationBloc<DeclineMatchRequest$Mutation> {
  DeclineVideoMatchBloc() : super(options: _declineVideoMatchOptions());

  static WatchQueryOptions<Object?> _declineVideoMatchOptions() {
    return WatchQueryOptions(
      document: DECLINE_MATCH_REQUEST_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  declineVideoMatch({required String matchId}) {
    final variables = DeclineMatchRequestArguments(
      input: DeclineMatchRequestInput(
        matchRequestId: matchId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  DeclineMatchRequest$Mutation parseData(Map<String, dynamic>? data) {
    return DeclineMatchRequest$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
