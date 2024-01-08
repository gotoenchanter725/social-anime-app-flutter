// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchesUsersModel _$$_MatchesUsersModelFromJson(Map<String, dynamic> json) =>
    _$_MatchesUsersModel(
      conversation: json['conversation'] == null
          ? null
          : MatchesUsersConversationModel.fromJson(
              json['conversation'] as Map<String, dynamic>),
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
      'conversation': instance.conversation,
      'user': instance.user,
      'matchee': instance.matchee,
    };

_$_MatchesUsersConversationModel _$$_MatchesUsersConversationModelFromJson(
        Map<String, dynamic> json) =>
    _$_MatchesUsersConversationModel(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_MatchesUsersConversationModelToJson(
        _$_MatchesUsersConversationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
