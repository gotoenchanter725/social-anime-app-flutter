import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_auth_model.freezed.dart';
part 'spotify_auth_model.g.dart';

@freezed
class SpotifyAuthModel with _$SpotifyAuthModel {
  const factory SpotifyAuthModel({
    required String token,
    required String refreshToken,
  }) = _SpotifyAuthModel;

  factory SpotifyAuthModel.initial() => const SpotifyAuthModel(
        token: '',
        refreshToken: '',
      );

  factory SpotifyAuthModel.fromJson(Map<String, dynamic> json) =>
      _$SpotifyAuthModelFromJson(json);
}
