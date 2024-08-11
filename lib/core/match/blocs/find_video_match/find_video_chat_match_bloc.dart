import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.graphql.dart';
import 'package:senpai/utils/methods/aliases.dart';

part 'find_video_chat_match_event.dart';
part 'find_video_chat_match_state.dart';
part 'find_video_chat_match_bloc.freezed.dart';

class FindVideoChatMatchBloc extends MutationBloc<FindVideoChatMatch$Mutation> {
  Timer? _timer;

  late String currentUserId;

  FindVideoChatMatch$Mutation$FindVideoChatMatch$User? matchUser;

  FindVideoChatMatchBloc() : super(options: _findVideoChatMatchOptions());

  static WatchQueryOptions<Object?> _findVideoChatMatchOptions() {
    return WatchQueryOptions(
      document: FIND_VIDEO_CHAT_MATCH_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  findVideoChatMatch({required String userId}) {
    currentUserId = userId;

    final variables = FindVideoChatMatchArguments(
      input: FindVideoChatMatchInput(
        userId: userId,
      ),
    ).toJson();

    run(variables);
  }

  /// Will schedule the next ping for a match in the next few seconds
  schedulePingForMatch({required String userId}) {
    _timer = Timer(const Duration(seconds: 5), () {
      findVideoChatMatch(userId: userId);
    });

    return _timer;
  }

  @override
  FindVideoChatMatch$Mutation parseData(Map<String, dynamic>? data) {
    final result =
        FindVideoChatMatch$Mutation.fromJson(data ?? <String, dynamic>{});
    if (result.findVideoChatMatch!.user != null) {
      logIt.debug(
          'Match found with user ${result.findVideoChatMatch!.user!.id}');
      matchUser = result.findVideoChatMatch!.user;
    } else {
      logIt.debug('No match found');
      // schedule a new query in 5 seconds
      schedulePingForMatch(userId: currentUserId);
    }
    return result;
  }

  @override
  Future<void> close() {
    _timer?.cancel(); // Cancel the timer when BLoC is closed
    return super.close();
  }
}
