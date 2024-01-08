import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_artist/spotify_artist_model.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_image_model.dart';

part 'spotify_album_model.freezed.dart';
part 'spotify_album_model.g.dart';

@freezed
class SpotifyAlbumModel with _$SpotifyAlbumModel {
  const factory SpotifyAlbumModel({
    required String name,
    List<SpotifyImageModel>? images,
    required List<SpotifyArtistModel> artists,
  }) = _SpotifyAlbumModel;

  factory SpotifyAlbumModel.initial() => const SpotifyAlbumModel(
        name: '',
        images: [],
        artists: [],
      );

  factory SpotifyAlbumModel.fromJson(Map<String, dynamic> json) =>
      _$SpotifyAlbumModelFromJson(json);
}
