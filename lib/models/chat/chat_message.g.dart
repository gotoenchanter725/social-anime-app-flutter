// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      id: json['id'] as String,
      senderId: json['senderId'] as String,
      text: json['text'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isRead: json['isRead'] as bool? ?? false,
      status: $enumDecodeNullable(_$MessageStatusEnumMap, json['status']) ??
          MessageStatus.sent,
      sticker: json['sticker'] == null
          ? null
          : Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
      attachmentType:
          $enumDecodeNullable(_$AttachmentTypeEnumMap, json['attachmentType']),
      attachment: json['attachment'] as String?,
      recommendation: json['recommendation'] == null
          ? null
          : Recommendation.fromJson(
              json['recommendation'] as Map<String, dynamic>),
      reaction: $enumDecodeNullable(_$ReactionTypeEnumMap, json['reaction']),
    );

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'text': instance.text,
      'timestamp': instance.timestamp.toIso8601String(),
      'isRead': instance.isRead,
      'sticker': instance.sticker,
      'attachmentType': _$AttachmentTypeEnumMap[instance.attachmentType],
      'attachment': instance.attachment,
      'recommendation': instance.recommendation,
      'reaction': _$ReactionTypeEnumMap[instance.reaction],
      'status': _$MessageStatusEnumMap[instance.status],
    };

const _$MessageStatusEnumMap = {
  MessageStatus.sent: 'sent',
  MessageStatus.delivered: 'delivered',
  MessageStatus.read: 'read',
  MessageStatus.error: 'error',
  MessageStatus.pending: 'pending',
};

const _$AttachmentTypeEnumMap = {
  AttachmentType.photo: 'photo',
  AttachmentType.video: 'video',
};

const _$ReactionTypeEnumMap = {
  ReactionType.laughing: 'laughing',
  ReactionType.thumbsUp: 'thumbsUp',
  ReactionType.heart: 'heart',
  ReactionType.puke: 'puke',
  ReactionType.anger: 'anger',
  ReactionType.demon: 'demon',
};

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    Recommendation(
      userId: json['userId'] as String,
      recommendeeId: json['recommendeeId'] as String,
      animeId: json['animeId'] as String,
      animeName: json['animeName'] as String,
      animeImageUrl: json['animeImageUrl'] as String,
    );

Map<String, dynamic> _$RecommendationToJson(Recommendation instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'recommendeeId': instance.recommendeeId,
      'animeId': instance.animeId,
      'animeName': instance.animeName,
      'animeImageUrl': instance.animeImageUrl,
    };

Sticker _$StickerFromJson(Map<String, dynamic> json) => Sticker(
      id: json['id'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StickerToJson(Sticker instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
