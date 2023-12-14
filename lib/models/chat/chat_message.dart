class ChatMessage {
  final String id;
  final String senderId;
  final String text;
  final DateTime timestamp;
  final bool isRead;
  final Sticker? sticker;
  final AttachmentType? attachmentType;
  final String? attachment;
  final Recommendation? recommendation;
  final ReactionType? reaction;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.text,
    required this.timestamp,
    this.isRead = false,
    this.sticker,
    this.attachmentType,
    this.attachment,
    this.recommendation,
    this.reaction,
  });
}

class Recommendation {
  final String userId;
  final String recommendeeId;
  final String animeId;
  final String animeName;
  final String animeImageUrl;

  Recommendation({
    required this.userId,
    required this.recommendeeId,
    required this.animeId,
    required this.animeName,
    required this.animeImageUrl,
  });
}

class Sticker {
  final String id;
  final String url;

  Sticker({
    required this.id,
    required this.url,
  });
}

enum AttachmentType {
  photo,
  video,
}

enum ReactionType {
  laughing,
  thumbsUp,
  heart,
  puke,
  anger,
  demon,
}
