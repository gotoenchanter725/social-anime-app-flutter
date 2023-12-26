import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart';

@LazySingleton(as: TokenStorage)
class SecureSpotifyAuthStorage extends TokenStorage<SpotifyAuthModel> {
  SecureSpotifyAuthStorage(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> delete() async {
    await _secureStorage.delete(key: 'spotify_auth_storage');
  }

  @override
  Future<SpotifyAuthModel?> read() async {
    final auth = await _secureStorage.read(key: 'spotify_auth_storage');

    if (auth != null) {
      return SpotifyAuthModel.fromJson(
          jsonDecode(auth) as Map<String, dynamic>);
    }

    return null;
  }

  @override
  Future<void> write(SpotifyAuthModel token) async {
    await _secureStorage.write(
      key: 'spotify_auth_storage',
      value: jsonEncode(token.toJson()),
    );
  }
}
