import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_image_model.freezed.dart';
part 'spotify_image_model.g.dart';

@freezed
class SpotifyImageModel with _$SpotifyImageModel {
  const factory SpotifyImageModel({
    required String url,
  }) = _SpotifyImageModel;

  factory SpotifyImageModel.initial() => const SpotifyImageModel(
        url: '',
      );

  factory SpotifyImageModel.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageModelFromJson(json);
}
