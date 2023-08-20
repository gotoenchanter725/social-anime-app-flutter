// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:fresh_dio/fresh_dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i7;
import 'package:senpai/core/secure_storage/secure_auth_storage.dart' as _i11;
import 'package:senpai/dependency_injection/dio_client_di.dart' as _i17;
import 'package:senpai/dependency_injection/graphql_client_di.dart' as _i15;
import 'package:senpai/dependency_injection/network_info_di.dart' as _i16;
import 'package:senpai/dependency_injection/router_di.dart' as _i13;
import 'package:senpai/dependency_injection/secure_storage_di.dart' as _i14;
import 'package:senpai/models/auth/auth_model.dart' as _i10;
import 'package:senpai/models/env_model.dart' as _i4;
import 'package:senpai/models/theme_model.dart' as _i8;
import 'package:senpai/routes/app_router.dart' as _i3;

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
    final routerInjection = _$RouterInjection();
    final secureStorageInjection = _$SecureStorageInjection();
    final graphQLInjection = _$GraphQLInjection();
    final networkInfoInjection = _$NetworkInfoInjection();
    final dioInjection = _$DioInjection();
    gh.factory<_i3.AppRouter>(() => routerInjection.router());
    await gh.singletonAsync<_i4.EnvModel>(
      () => _i4.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i5.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i6.GraphQLClient>(
        () => graphQLInjection.graphql(gh<_i4.EnvModel>()));
    gh.factory<_i7.InternetConnection>(() => networkInfoInjection.networkInfo);
    await gh.singletonAsync<_i8.ThemeModel>(
      () => _i8.ThemeModel.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i9.TokenStorage<_i10.AuthModel>>(
        () => _i11.SecureAuthStorage(gh<_i5.FlutterSecureStorage>()));
    gh.factory<_i12.Dio>(() => dioInjection.dio(gh<_i4.EnvModel>()));
    return this;
  }
}

class _$RouterInjection extends _i13.RouterInjection {}

class _$SecureStorageInjection extends _i14.SecureStorageInjection {}

class _$GraphQLInjection extends _i15.GraphQLInjection {}

class _$NetworkInfoInjection extends _i16.NetworkInfoInjection {}

class _$DioInjection extends _i17.DioInjection {}
