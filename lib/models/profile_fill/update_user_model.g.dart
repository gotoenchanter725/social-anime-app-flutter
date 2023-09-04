// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdateUserModel _$$_UpdateUserModelFromJson(Map<String, dynamic> json) =>
    _$_UpdateUserModel(
      id: json['id'] as String,
      firstName: json['firstName'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as int?,
      desiredGender: json['desiredGender'] as int?,
      occupation: json['occupation'] as String?,
      school: json['school'] as String?,
      bio: json['bio'] as String?,
    );

Map<String, dynamic> _$$_UpdateUserModelToJson(_$_UpdateUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'desiredGender': instance.desiredGender,
      'occupation': instance.occupation,
      'school': instance.school,
      'bio': instance.bio,
    };
