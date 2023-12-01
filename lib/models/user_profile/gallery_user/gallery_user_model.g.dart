// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GalleryUserModel _$$_GalleryUserModelFromJson(Map<String, dynamic> json) =>
    _$_GalleryUserModel(
      photos: (json['photos'] as List<dynamic>)
          .map((e) => UploadPhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GalleryUserModelToJson(_$_GalleryUserModel instance) =>
    <String, dynamic>{
      'photos': instance.photos,
    };
