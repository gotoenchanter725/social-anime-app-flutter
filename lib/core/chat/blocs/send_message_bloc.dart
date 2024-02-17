import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';
import 'package:senpai/utils/methods/aliases.dart';
import 'package:senpai/utils/methods/utils.dart';

@injectable
class SendMessageBloc extends MutationBloc<SendMessage$Mutation> {
  SendMessageBloc() : super(options: _sendMessageMutationOptions());

  static WatchQueryOptions<Object?> _sendMessageMutationOptions() {
    return WatchQueryOptions(
      document: SEND_MESSAGE_MUTATION_DOCUMENT,
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
    logIt.debug(
        "sent message: $message to conversation: $conversationId with senderId: $senderId and recommendedAnimeId: $recommendedAnimeId and stickerId: $stickerId");
    final variables = SendMessageArguments(
      input: SendMessageInput(
        params: MessageInput(
          conversationId: conversationId,
          content: message,
          senderId: int.parse(senderId),
          recommendedAnimeId: recommendedAnimeId,
          stickerId: stickerId,
          attachment: null,
        ),
      ),
    ).toJson();

    run(variables);
  }

  sendAttachment({
    required String conversationId,
    required String senderId,
    required String attachmentUrl,
  }) async {
    MultipartFile? file;
    try {
      file = await urlToFileMultipart(attachmentUrl);
    } catch (e) {
      logIt.error(e);
      rethrow;
    }
    logIt.debug("sent attachment with url: $attachmentUrl");
    final variables = SendMessageArguments(
      input: SendMessageInput(
        params: MessageInput(
          conversationId: conversationId,
          senderId: int.parse(senderId),
          attachment: file,
          content: '',
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  SendMessage$Mutation parseData(Map<String, dynamic>? data) {
    return SendMessage$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
