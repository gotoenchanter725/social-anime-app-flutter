import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

class AcceptVideoMatchBloc extends MutationBloc<AcceptMatchRequest$Mutation> {
  AcceptVideoMatchBloc() : super(options: _acceptVideoMatchOptions());

  static WatchQueryOptions<Object?> _acceptVideoMatchOptions() {
    return WatchQueryOptions(
      document: ACCEPT_MATCH_REQUEST_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  acceptVideoMatch({required String matchId}) {
    final variables = AcceptMatchRequestArguments(
      input: AcceptMatchRequestInput(
        matchRequestId: matchId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  AcceptMatchRequest$Mutation parseData(Map<String, dynamic>? data) {
    return AcceptMatchRequest$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
