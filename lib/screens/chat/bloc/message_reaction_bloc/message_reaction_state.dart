part of 'message_reaction_bloc.dart';

@freezed
class MessageReactionState with _$MessageReactionState {
  const factory MessageReactionState({
    @Default(false) bool showReactions,
    @Default(false) bool showEmojiReactions,
    String? activeMessageId,
  }) = _MessageReactionState;
}
