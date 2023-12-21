part of 'message_reaction_bloc.dart';

@freezed
class MessageReactionEvent with _$MessageReactionEvent {
  const factory MessageReactionEvent.showReactions(String messageId) =
      _ShowReactions;
  const factory MessageReactionEvent.hideReactions() = _HideReactions;
}
