import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

class AcceptVideoCallBloc extends MutationBloc<AcceptVideoChat$Mutation> {
  AcceptVideoCallBloc() : super(options: _acceptVideoCallOptions());

  static WatchQueryOptions<Object?> _acceptVideoCallOptions() {
    return WatchQueryOptions(
      document: ACCEPT_VIDEO_CHAT_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  acceptVideoCall({required String matchId}) {
    final variables = AcceptVideoChatArguments(
      input: AcceptVideoCallInput(
        chatRequestId: matchId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  AcceptVideoChat$Mutation parseData(Map<String, dynamic>? data) {
    return AcceptVideoChat$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
