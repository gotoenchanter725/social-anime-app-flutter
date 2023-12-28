import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_album/spotify_album_model.dart';

part 'spotify_track_model.freezed.dart';
part 'spotify_track_model.g.dart';

@freezed
class SpotifyTrackModel with _$SpotifyTrackModel {
  const factory SpotifyTrackModel({
    required String id,
    required String name,
    required SpotifyAlbumModel album,
  }) = _SpotifyTrackModel;

  factory SpotifyTrackModel.initial() => SpotifyTrackModel(
        id: '',
        name: '',
        album: SpotifyAlbumModel.initial(),
      );

  factory SpotifyTrackModel.fromJson(Map<String, dynamic> json) =>
      _$SpotifyTrackModelFromJson(json);
}
