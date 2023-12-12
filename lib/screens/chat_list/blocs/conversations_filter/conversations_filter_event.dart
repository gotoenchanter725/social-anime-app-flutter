part of 'conversations_filter_bloc.dart';

@freezed
class ConversationsFilterEvent with _$ConversationsFilterEvent {
  const factory ConversationsFilterEvent.filterChanged(String filter) =
      _FilterChanged;
}
