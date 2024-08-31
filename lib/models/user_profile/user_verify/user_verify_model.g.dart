// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserVerifyModelImpl _$$UserVerifyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserVerifyModelImpl(
      userId: (json['userId'] as num).toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$UserVerifyModelImplToJson(
        _$UserVerifyModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'status': instance.status,
    };
