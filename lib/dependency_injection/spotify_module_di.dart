import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/profile_fill/api/spotify/sporify_auth_api.dart';
import 'package:senpai/core/profile_fill/api/spotify/spotify_profile_info_api.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_auth_repository.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_auth_usecase.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_fetch_user_info_repository.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_fetch_user_info_usecase.dart';
import 'package:senpai/models/env_model.dart';
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';

@module
abstract class SpotifyInjectionModule {
  @injectable
  SpotifyAuthApi spotifyAuthApi(EnvModel env) => SpotifyAuthApi(
        getIt<Dio>(),
        env,
        getIt<TokenStorage<SpotifyAuthModel>>(),
      );

  @Injectable(as: SpotifyAuthUseCase)
  SpotifyAuthRepository get spotifyAuthRepository =>
      SpotifyAuthRepository(getIt<SpotifyAuthApi>());

  SpotifyFetchUserInfoApi spotifyFetchUserInfoApi(EnvModel env) =>
      SpotifyFetchUserInfoApi(
        getIt<Dio>(),
        env,
        getIt<TokenStorage<SpotifyAuthModel>>(),
      );

  @Injectable(as: SpotifyFetchUserInfoUseCase)
  SpotifyFetchUserInfoRepository get spotifyFetchUserInfoRepository =>
      SpotifyFetchUserInfoRepository(getIt<SpotifyFetchUserInfoApi>());
}
