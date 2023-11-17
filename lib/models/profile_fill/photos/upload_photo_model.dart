import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_photo_model.freezed.dart';
part 'upload_photo_model.g.dart';

@freezed
class UploadPhotoModel with _$UploadPhotoModel {
  const factory UploadPhotoModel({
    required String id,
    String? url,
    int? order,
  }) = _UploadPhotoModel;

  factory UploadPhotoModel.initial() => const UploadPhotoModel(
        id: '',
        url: '',
        order: 0,
      );

  factory UploadPhotoModel.fromJson(Map<String, dynamic> json) =>
      _$UploadPhotoModelFromJson(json);
}
