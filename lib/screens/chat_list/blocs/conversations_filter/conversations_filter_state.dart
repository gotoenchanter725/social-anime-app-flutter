part of 'conversations_filter_bloc.dart';

@freezed
class ConversationsFilterState with _$ConversationsFilterState {
  const factory ConversationsFilterState.initial({
    required CategorizedConversations filteredConversations,
    required String filter,
  }) = _Initial;

  const factory ConversationsFilterState.filtered({
    required CategorizedConversations filteredConversations,
    required String filter,
  }) = _Filtered;
}
