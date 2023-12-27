// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikeUserModel _$$_LikeUserModelFromJson(Map<String, dynamic> json) =>
    _$_LikeUserModel(
      userId: json['userId'] as int,
      likeeId: json['likeeId'] as int,
      likeType: json['likeType'] as String,
      match: json['match'] == null
          ? null
          : MatchesUsersModel.fromJson(json['match'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LikeUserModelToJson(_$_LikeUserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'likeeId': instance.likeeId,
      'likeType': instance.likeType,
      'match': instance.match,
    };
