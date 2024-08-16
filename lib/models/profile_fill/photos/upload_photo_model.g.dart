// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadPhotoModelImpl _$$UploadPhotoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadPhotoModelImpl(
      id: json['id'] as String,
      url: json['url'] as String?,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UploadPhotoModelImplToJson(
        _$UploadPhotoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'order': instance.order,
    };
