class ChatMessage {
  final String id;
  final String senderId;
  final String text;
  final DateTime timestamp;
  final bool isRead;
  final String? stickerId;
  final AttachmentType? attachmentType;
  final String? attachment;
  final int? recommendationAnimeId;
  final ReactionType? reaction;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.text,
    required this.timestamp,
    this.isRead = false,
    this.stickerId,
    this.attachmentType,
    this.attachment,
    this.recommendationAnimeId,
    this.reaction,
  });
}

enum AttachmentType {
  Photo,
  Video,
}

enum ReactionType {
  laughing,
  thumbsUp,
  heart,
  puke,
  anger,
  demon,
}
