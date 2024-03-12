// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeUserModelImpl _$$LikeUserModelImplFromJson(Map<String, dynamic> json) =>
    _$LikeUserModelImpl(
      like: LikeModel.fromJson(json['like'] as Map<String, dynamic>),
      match: json['match'] == null
          ? null
          : MatchesUsersModel.fromJson(json['match'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LikeUserModelImplToJson(_$LikeUserModelImpl instance) =>
    <String, dynamic>{
      'like': instance.like,
      'match': instance.match,
    };
