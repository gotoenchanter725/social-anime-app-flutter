// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchesUsersModel _$$_MatchesUsersModelFromJson(Map<String, dynamic> json) =>
    _$_MatchesUsersModel(
      user: json['user'] == null
          ? null
          : UserProfileModel.fromJson(json['user'] as Map<String, dynamic>),
      matchee: json['matchee'] == null
          ? null
          : UserProfileModel.fromJson(json['matchee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MatchesUsersModelToJson(
        _$_MatchesUsersModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'matchee': instance.matchee,
    };
