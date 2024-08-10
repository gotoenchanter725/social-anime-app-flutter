import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

class SendVideoChatRequestBloc
    extends MutationBloc<SendVideoChatRequest$Mutation> {
  SendVideoChatRequestBloc() : super(options: _sendVideoChatRequestOptions());

  static WatchQueryOptions<Object?> _sendVideoChatRequestOptions() {
    return WatchQueryOptions(
      document: SEND_VIDEO_CHAT_REQUEST_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  sendVideoChatRequest({required String userId, required String matcheeId}) {
    final variables = SendVideoChatRequestArguments(
      input: SendVideoChatRequestInput(
        userId: userId,
        matcheeId: matcheeId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  SendVideoChatRequest$Mutation parseData(Map<String, dynamic>? data) {
    return SendVideoChatRequest$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
