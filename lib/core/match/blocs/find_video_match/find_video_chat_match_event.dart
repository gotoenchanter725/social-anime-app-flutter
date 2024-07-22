part of 'find_video_chat_match_bloc.dart';

@freezed
class FindVideoChatMatchEvent<T> with _$FindVideoChatMatchEvent<T> {
  const factory FindVideoChatMatchEvent.run(Map<String, dynamic> variables,
      {Object? optimisticResult}) = _Run<T>;
}
