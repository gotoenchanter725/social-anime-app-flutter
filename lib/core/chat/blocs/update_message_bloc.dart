import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/models/chat/chat_message.dart';
import 'package:senpai/utils/methods/utils.dart';

class UpdateMessageBloc extends MutationBloc<UpdateMessage$Mutation> {
  UpdateMessageBloc() : super(options: _updateMessageMutationOptions());

  static WatchQueryOptions<Object?> _updateMessageMutationOptions() {
    return WatchQueryOptions(
      document: UPDATE_MESSAGE_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  updateMessage({
    required String messageId,
    required ReactionType reactionType,
    required String content,
  }) {
    final String reaction = mapReactionTypeToString(reactionType);
    final variables = UpdateMessageArguments(
      input: UpdateMessageInput(
        params: MessageUpdateInput(
          messageId: messageId,
          reaction: reaction,
          content: content,
        ),
      ),
    ).toJson();

    run(variables);
  }

  @override
  UpdateMessage$Mutation parseData(Map<String, dynamic>? data) {
    return UpdateMessage$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
