import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_favorite_music_model.freezed.dart';
part 'user_favorite_music_model.g.dart';

@freezed
class UserFavoriteMusicModel with _$UserFavoriteMusicModel {
  const factory UserFavoriteMusicModel({
    required String id,
    required String coverUrl,
    required String musicType,
    String? artistName,
    String? trackName,
    String? spotifyId,
  }) = _UserFavoriteMusicModel;

  factory UserFavoriteMusicModel.initial() => const UserFavoriteMusicModel(
        id: '',
        coverUrl: '',
        musicType: '',
        artistName: '',
        trackName: '',
        spotifyId: '',
      );

  factory UserFavoriteMusicModel.fromJson(Map<String, dynamic> json) =>
      _$UserFavoriteMusicModelFromJson(json);
}
