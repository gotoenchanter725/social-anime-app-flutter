import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_model.freezed.dart';
part 'like_model.g.dart';

@freezed
class LikeModel with _$LikeModel {
  const factory LikeModel({
    required int userId,
    required int likeeId,
    required String likeType,
  }) = _LikeModel;

  factory LikeModel.initial() => const LikeModel(
        userId: 0,
        likeeId: 0,
        likeType: '',
      );

  factory LikeModel.fromJson(Map<String, dynamic> json) =>
      _$LikeModelFromJson(json);
}
