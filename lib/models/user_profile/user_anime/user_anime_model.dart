import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_anime_model.freezed.dart';
part 'user_anime_model.g.dart';

@freezed
class UserAnimeModel with _$UserAnimeModel {
  const factory UserAnimeModel({
    required String id,
    String? title,
    String? cover,
  }) = _UserAnimeModel;

  factory UserAnimeModel.initial() => const UserAnimeModel(
        id: '',
        title: '',
        cover: '',
      );

  factory UserAnimeModel.fromJson(Map<String, dynamic> json) =>
      _$UserAnimeModelFromJson(json);
}
