import 'package:dartz/dartz.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_failure.dart';

abstract class SpotifyAuthUseCase {
  Future<Either<SpotifyFailure, String>> fetchToken();
  Future<Either<SpotifyFailure, String>> refreshToken();
}
