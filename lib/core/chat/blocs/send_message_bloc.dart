import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class SendMessageBloc extends MutationBloc<SendMMessage$Mutation> {
  SendMessageBloc() : super(options: _sendMessageMutationOptions());

  static WatchQueryOptions<Object?> _sendMessageMutationOptions() {
    return WatchQueryOptions(
      document: SEND_M_MESSAGE_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  sendMessage({
    required String message,
    required String conversationId,
    required String senderId,
    String? recommendedAnimeId,
    String? stickerId,
  }) {
    final variables = SendMMessageArguments(
      input: SendMessageInput(
        params: MessageInput(
          conversationId: conversationId,
          content: message,
          senderId: int.parse(senderId),
          recommendedAnimeId: recommendedAnimeId,
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  SendMMessage$Mutation parseData(Map<String, dynamic>? data) {
    return SendMMessage$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
