import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/models/auth/device_token_model.dart';

@LazySingleton(as: TokenStorage)
class SecureDeviceTokenStorage extends TokenStorage<DeviceTokenModel> {
  SecureDeviceTokenStorage(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> delete() async {
    await _secureStorage.delete(key: 'device_token_storage');
  }

  @override
  Future<DeviceTokenModel?> read() async {
    final auth = await _secureStorage.read(key: 'device_token_storage');

    if (auth != null) {
      return DeviceTokenModel.fromJson(
          jsonDecode(auth) as Map<String, dynamic>);
    }

    return null;
  }

  @override
  Future<void> write(DeviceTokenModel token) async {
    await _secureStorage.write(
        key: 'device_token_storage', value: jsonEncode(token.toJson()));
  }
}
