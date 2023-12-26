import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_image_model.dart';

part 'spotify_artist_model.freezed.dart';
part 'spotify_artist_model.g.dart';

@freezed
class SpotifyArtistModel with _$SpotifyArtistModel {
  const factory SpotifyArtistModel({
    required String id,
    required String name,
    List<SpotifyImageModel>? images,
  }) = _SpotifyArtistModel;

  factory SpotifyArtistModel.initial() => const SpotifyArtistModel(
        id: '',
        name: '',
        images: [],
      );

  factory SpotifyArtistModel.fromJson(Map<String, dynamic> json) =>
      _$SpotifyArtistModelFromJson(json);
}
