// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeModelImpl _$$LikeModelImplFromJson(Map<String, dynamic> json) =>
    _$LikeModelImpl(
      userId: (json['userId'] as num).toInt(),
      likeeId: (json['likeeId'] as num).toInt(),
      likeType: json['likeType'] as String,
    );

Map<String, dynamic> _$$LikeModelImplToJson(_$LikeModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'likeeId': instance.likeeId,
      'likeType': instance.likeType,
    };
