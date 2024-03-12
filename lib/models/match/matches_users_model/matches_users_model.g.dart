// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchesUsersModelImpl _$$MatchesUsersModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchesUsersModelImpl(
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

Map<String, dynamic> _$$MatchesUsersModelImplToJson(
        _$MatchesUsersModelImpl instance) =>
    <String, dynamic>{
      'conversation': instance.conversation,
      'user': instance.user,
      'matchee': instance.matchee,
    };

_$MatchesUsersConversationModelImpl
    _$$MatchesUsersConversationModelImplFromJson(Map<String, dynamic> json) =>
        _$MatchesUsersConversationModelImpl(
          id: json['id'] as String,
        );

Map<String, dynamic> _$$MatchesUsersConversationModelImplToJson(
        _$MatchesUsersConversationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
