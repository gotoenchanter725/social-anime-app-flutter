// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserModelImpl _$$UpdateUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserModelImpl(
      id: json['id'] as String,
      phone: json['phone'] as String,
      firstName: json['firstName'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      gender: (json['gender'] as num?)?.toInt(),
      desiredGender: (json['desiredGender'] as num?)?.toInt(),
      occupation: json['occupation'] as String?,
      school: json['school'] as String?,
      bio: json['bio'] as String?,
      hasLocationHidden: json['hasLocationHidden'] as bool?,
      isDisplayingRecentlyActive: json['isDisplayingRecentlyActive'] as bool?,
      isDisplayingActive: json['isDisplayingActive'] as bool?,
    );

Map<String, dynamic> _$$UpdateUserModelImplToJson(
        _$UpdateUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'birthday': instance.birthday?.toIso8601String(),
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'occupation': instance.occupation,
      'school': instance.school,
      'bio': instance.bio,
      'hasLocationHidden': instance.hasLocationHidden,
      'isDisplayingRecentlyActive': instance.isDisplayingRecentlyActive,
      'isDisplayingActive': instance.isDisplayingActive,
    };
