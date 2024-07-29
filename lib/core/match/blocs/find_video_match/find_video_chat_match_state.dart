part of 'find_video_chat_match_bloc.dart';

@freezed
class FindVideoChatMatchState<T> with _$FindVideoChatMatchState<T> {
  const factory FindVideoChatMatchState.initial() = _Initial<T>;
  const factory FindVideoChatMatchState.loading() = _Loading<T>;
  const factory FindVideoChatMatchState.polling() = _Polling<T>;
  const factory FindVideoChatMatchState.succeeded(
      {required T data, required QueryResult result}) = _Succeeded<T>;
  const factory FindVideoChatMatchState.failed(
      {required OperationException error,
      required QueryResult result}) = _Failed<T>;
}
