import 'package:dartz/dartz.dart';
import 'package:senpai/core/profile_fill/api/spotify/sporify_auth_api.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_auth_usecase.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_failure.dart';

class SpotifyAuthRepository implements SpotifyAuthUseCase {
  final SpotifyAuthApi api;

  SpotifyAuthRepository(this.api);

  @override
  Future<Either<SpotifyFailure, String>> fetchToken() async {
    try {
      final token = await api.getAuthorizationToken();
      return right(token);
    } catch (e) {
      return left(
        const SpotifyAuthError(),
      );
    }
  }

  @override
  Future<Either<SpotifyFailure, String>> refreshToken() async {
    try {
      final token = await api.refreshAuthorizationToken();
      return right(token);
    } catch (e) {
      return left(
        const SpotifyAuthError(),
      );
    }
  }
}
