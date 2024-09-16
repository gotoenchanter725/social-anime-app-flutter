import 'package:dio/dio.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/domain/profile_fill/spotify/spotify_failure.dart';
import 'package:senpai/models/env_model.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_artist/spotify_artist_model.dart';
import 'package:senpai/models/profile_fill/spotify/spotify_track/spotify_track_model.dart';
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';

class SpotifyFetchUserInfoApi {
  final Dio _dio;
  final EnvModel _env;
  final TokenStorage<SpotifyAuthModel> _tokenStorage;

  SpotifyFetchUserInfoApi(this._dio, this._env, this._tokenStorage);

  Future<List<SpotifyArtistModel>> getTopArtists(String token) async {
    if (token.isNotEmpty) {
      final response = await _dio.get(
        '${_env.httpApiSpotify}/me/top/artists',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        queryParameters: {"time_range": "medium_term", "limit": "5"},
      );
      if (response.statusCode == 200) {
        if (response.data['items'] != null) {
          final data = response.data['items'] as List;
          return data.isNotEmpty
              ? (response.data['items'] as List)
                  .map((item) => SpotifyArtistModel.fromJson(item))
                  .toList()
              : [];
        } else {
          return [];
        }
      } else {
        throw const ServerError();
      }
    } else {
      throw const ServerError();
    }
  }

  Future<List<SpotifyTrackModel>> getTopTracks(String token) async {
    if (token.isNotEmpty) {
      final response = await _dio.get(
        '${_env.httpApiSpotify}/me/top/tracks',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        queryParameters: {"time_range": "medium_term", "limit": "5"},
      );
      if (response.statusCode == 200) {
        if (response.data['items'] != null) {
          final data = response.data['items'] as List;
          return data.isNotEmpty
              ? (response.data['items'] as List)
                  .map((item) => SpotifyTrackModel.fromJson(item))
                  .toList()
              : [];
        } else {
          return [];
        }
      } else {
        throw const ServerError();
      }
    } else {
      throw const ServerError();
    }
  }
}
