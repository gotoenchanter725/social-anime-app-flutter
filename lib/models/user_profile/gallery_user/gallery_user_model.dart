import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/photos/upload_photo_model.dart';

part 'gallery_user_model.freezed.dart';
part 'gallery_user_model.g.dart';

@freezed
class GalleryUserModel with _$GalleryUserModel {
  const factory GalleryUserModel({
    required List<UploadPhotoModel> photos,
  }) = _GalleryUserModel;

  factory GalleryUserModel.initial() => const GalleryUserModel(
        photos: [],
      );

  factory GalleryUserModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryUserModelFromJson(json);
}
