import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.g.dart';

@JsonSerializable()
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
  ReactionType? reaction;
  MessageStatus? status;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.text,
    required this.timestamp,
    this.isRead = false,
    this.status = MessageStatus.sent,
    this.sticker,
    this.attachmentType,
    this.attachment,
    this.recommendation,
    this.reaction,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);
}

@JsonSerializable()
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

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationToJson(this);
}

@JsonSerializable()
class Sticker {
  final String id;
  final String url;

  Sticker({
    required this.id,
    required this.url,
  });

  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);

  Map<String, dynamic> toJson() => _$StickerToJson(this);
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

enum MessageStatus {
  sent,
  delivered,
  read,
  error,
  pending,
}
