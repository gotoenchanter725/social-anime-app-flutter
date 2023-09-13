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
  });
}

enum AttachmentType {
  Photo,
  Video,
}
