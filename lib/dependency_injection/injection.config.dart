// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:fresh_dio/fresh_dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:senpai/core/secure_storage/secure_auth_storage.dart' as _i7;
import 'package:senpai/models/auth/auth_model.dart' as _i6;
import 'package:senpai/models/env_model.dart' as _i3;
import 'package:senpai/models/theme_model.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i3.EnvModel>(
      () => _i3.EnvModel.create(),
      preResolve: true,
    );
    await gh.singletonAsync<_i4.ThemeModel>(
      () => _i4.ThemeModel.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.TokenStorage<_i6.AuthModel>>(
        () => _i7.SecureAuthStorage(gh<_i8.FlutterSecureStorage>()));
    return this;
  }
}
