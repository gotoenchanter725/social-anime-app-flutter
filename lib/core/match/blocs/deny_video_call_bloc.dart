import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

class DenyVideoCallBloc extends MutationBloc<DenyVideoCall$Mutation> {
  DenyVideoCallBloc() : super(options: _denyVideoCallOptions());

  static WatchQueryOptions<Object?> _denyVideoCallOptions() {
    return WatchQueryOptions(
      document: DENY_VIDEO_CALL_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  denyVideoCall({required String matchId}) {
    final variables = DenyVideoCallArguments(
      input: DenyVideoCallInput(
        chatRequestId: matchId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  DenyVideoCall$Mutation parseData(Map<String, dynamic>? data) {
    return DenyVideoCall$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
