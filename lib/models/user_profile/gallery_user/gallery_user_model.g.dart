// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GalleryUserModelImpl _$$GalleryUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GalleryUserModelImpl(
      photos: (json['photos'] as List<dynamic>)
          .map((e) => UploadPhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GalleryUserModelImplToJson(
        _$GalleryUserModelImpl instance) =>
    <String, dynamic>{
      'photos': instance.photos,
    };
