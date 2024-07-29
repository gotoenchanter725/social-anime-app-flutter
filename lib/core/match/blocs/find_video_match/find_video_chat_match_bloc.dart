import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';

part 'find_video_chat_match_event.dart';
part 'find_video_chat_match_state.dart';
part 'find_video_chat_match_bloc.freezed.dart';

class FindVideoChatMatchBloc extends MutationBloc<FindVideoChatMatch$Mutation> {
  FindVideoChatMatchBloc() : super(options: _findVideoChatMatchOptions());

  static WatchQueryOptions<Object?> _findVideoChatMatchOptions() {
    return WatchQueryOptions(
      document: FIND_VIDEO_CHAT_MATCH_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  findVideoChatMatch({required String userId}) {
    final variables = FindVideoChatMatchArguments(
      input: FindVideoChatMatchInput(
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  @override
  FindVideoChatMatch$Mutation parseData(Map<String, dynamic>? data) {
    return FindVideoChatMatch$Mutation.fromJson(data ?? <String, dynamic>{});
  }

  void startPolling({required String userId}) {
    findVideoChatMatch(userId: userId);
    add(MutationEvent<FindVideoChatMatch$Mutation>.run(
      {
        'input': {'userId': userId}
      },
    ));
  }

  Future<void> _onEvent(
    MutationEvent<FindVideoChatMatch$Mutation> event,
    Emitter<MutationState<FindVideoChatMatch$Mutation>> emit,
  ) async {
    emit(const MutationState.loading());

    await event.map(
      run: (e) async {
        (request
              ..variables = e.variables
              ..optimisticResult = e.optimisticResult)
            .fetchResults();

        await emit.forEach<QueryResult>(
          request.stream,
          onData: (result) {
            final exception = result.exception;

            if (exception != null) {
              emit(MutationState<FindVideoChatMatch$Mutation>.failed(
                  error: exception, result: result));
            }

            if (!result.isLoading && !result.hasException) {
              final data = parseData(result.data);
              if (data.findVideoChatMatch != null &&
                  data.findVideoChatMatch?.user != null) {
                emit(MutationState<FindVideoChatMatch$Mutation>.succeeded(
                  data: data,
                  result: result,
                ));
              } else {
                emit(
                    const MutationState<FindVideoChatMatch$Mutation>.loading());
                startPolling(userId: e.variables['input']['userId']);
              }
            }

            return state;
          },
        );
      },
    );
  }
}
