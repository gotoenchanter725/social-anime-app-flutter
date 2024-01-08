import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_failure.freezed.dart';

@freezed
abstract class SpotifyFailure with _$SpotifyFailure {
  const factory SpotifyFailure.serverError() = ServerError;
  const factory SpotifyFailure.spotifyAuthError() = SpotifyAuthError;
}
