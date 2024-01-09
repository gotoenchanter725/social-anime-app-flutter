// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikeModel _$$_LikeModelFromJson(Map<String, dynamic> json) => _$_LikeModel(
      userId: json['userId'] as int,
      likeeId: json['likeeId'] as int,
      likeType: json['likeType'] as String,
    );

Map<String, dynamic> _$$_LikeModelToJson(_$_LikeModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'likeeId': instance.likeeId,
      'likeType': instance.likeType,
    };
