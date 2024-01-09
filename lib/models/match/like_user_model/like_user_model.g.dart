// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikeUserModel _$$_LikeUserModelFromJson(Map<String, dynamic> json) =>
    _$_LikeUserModel(
      like: LikeModel.fromJson(json['like'] as Map<String, dynamic>),
      match: json['match'] == null
          ? null
          : MatchesUsersModel.fromJson(json['match'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LikeUserModelToJson(_$_LikeUserModel instance) =>
    <String, dynamic>{
      'like': instance.like,
      'match': instance.match,
    };
