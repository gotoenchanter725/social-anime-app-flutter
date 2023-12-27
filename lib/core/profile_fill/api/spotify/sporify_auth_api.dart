import 'package:dio/dio.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_failure.dart';
import 'package:senpai/models/env_model.dart';
import 'dart:convert';

import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';

String _scope = 'user-top-read';

class SpotifyAuthApi {
  final Dio _dio;
  final EnvModel _env;
  final TokenStorage<SpotifyAuthModel> _tokenStorage;

  SpotifyAuthApi(this._dio, this._env, this._tokenStorage);

  Future<String> getAuthorizationToken() async {
    String authorizationCode = await _getAuthorizationCode();
    if (authorizationCode.isNotEmpty) {
      final authorization =
          'Basic ${base64Encode(utf8.encode('${_env.spotifyClientId}:${_env.spotifyClientSecret}'))}';
      final response = await _dio.post(
        '${_env.httpApiAccountsSpotify}/api/token',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': authorization,
          },
        ),
        data: {
          'grant_type': 'authorization_code',
          'code': authorizationCode,
          'redirect_uri': _env.spotifyRedirectUri,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = response.data;
        final accessToken = jsonResponse['access_token'];
        final refreshToken = jsonResponse['refresh_token'];
        _tokenStorage.write(
          SpotifyAuthModel(
            token: accessToken,
            refreshToken: refreshToken,
          ),
        );
        return accessToken;
      } else {
        throw const SpotifyAuthError();
      }
    } else {
      throw const SpotifyAuthError();
    }
  }

  Future<String> refreshAuthorizationToken() async {
    SpotifyAuthModel? spotifyAuthModel = await _tokenStorage.read();

    if (spotifyAuthModel != null) {
      final authorization =
          'Basic ${base64Encode(utf8.encode('${_env.spotifyClientId}:${_env.spotifyClientSecret}'))}';
      final response = await _dio.post(
        '${_env.httpApiAccountsSpotify}/api/token',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': authorization,
          },
        ),
        data: {
          'refresh_token': spotifyAuthModel.refreshToken,
          'grant_type': 'refresh_token',
          'redirect_uri': _env.spotifyRedirectUri,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = response.data;
        final accessToken = jsonResponse['access_token'];

        _tokenStorage.write(
          SpotifyAuthModel(
            token: accessToken,
            refreshToken: spotifyAuthModel.refreshToken,
          ),
        );
        return accessToken;
      } else {
        throw const SpotifyAuthError();
      }
    } else {
      throw const SpotifyAuthError();
    }
  }

  Future<String> _getAuthorizationCode() async {
    String authorizationCode = '';

    final url = Uri.https('accounts.spotify.com', '/authorize', {
      'client_id': _env.spotifyClientId,
      'redirect_uri': _env.spotifyRedirectUri,
      'scope': _scope,
      'response_type': 'code',
    });

    try {
      final result = await FlutterWebAuth2.authenticate(
        url: url.toString(),
        callbackUrlScheme: _env.spotifyCallbackUrlScheme,
      );
      final uri = Uri.parse(result);

      if (uri.queryParameters.containsKey('code')) {
        authorizationCode = uri.queryParameters['code'] ?? '';
      } else {
        throw const SpotifyAuthError();
      }
    } catch (e) {
      throw const SpotifyAuthError();
    }
    return authorizationCode;
  }
}
