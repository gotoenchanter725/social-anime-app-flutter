import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

class SendMatchRequestBloc extends MutationBloc<SendMatchRequest$Mutation> {
  SendMatchRequestBloc() : super(options: _sendMatchRequestOptions());

  static WatchQueryOptions<Object?> _sendMatchRequestOptions() {
    return WatchQueryOptions(
      document: SEND_MATCH_REQUEST_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  sendMatchRequest({required String userId, required String matcheeId}) {
    final variables = SendMatchRequestArguments(
      input: SendMatchRequestInput(
        senderId: userId,
        receiverId: matcheeId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  SendMatchRequest$Mutation parseData(Map<String, dynamic>? data) {
    return SendMatchRequest$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
