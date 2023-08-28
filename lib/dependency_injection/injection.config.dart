// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:fresh_dio/fresh_dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i8;
import 'package:senpai/core/auth/blocs/create_user_bloc.dart' as _i4;
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart'
    as _i10;
import 'package:senpai/core/auth/blocs/sign_in_bloc.dart' as _i11;
import 'package:senpai/core/auth/blocs/validate_phone_bloc.dart' as _i16;
import 'package:senpai/core/secure_storage/secure_auth_storage.dart' as _i15;
import 'package:senpai/dependency_injection/dio_client_di.dart' as _i22;
import 'package:senpai/dependency_injection/graphql_client_di.dart' as _i20;
import 'package:senpai/dependency_injection/network_info_di.dart' as _i21;
import 'package:senpai/dependency_injection/router_di.dart' as _i18;
import 'package:senpai/dependency_injection/secure_storage_di.dart' as _i19;
import 'package:senpai/models/auth/auth_model.dart' as _i14;
import 'package:senpai/models/env_model.dart' as _i5;
import 'package:senpai/models/theme_model.dart' as _i12;
import 'package:senpai/routes/app_router.dart' as _i3;
import 'package:senpai/utils/helpers/logging_helpers.dart' as _i9;

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
    gh.factory<_i4.CreateUserBloc>(() => _i4.CreateUserBloc());
    await gh.singletonAsync<_i5.EnvModel>(
      () => _i5.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i6.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i7.GraphQLClient>(
        () => graphQLInjection.graphql(gh<_i5.EnvModel>()));
    gh.factory<_i8.InternetConnection>(() => networkInfoInjection.networkInfo);
    gh.singleton<_i9.LoggingHelper>(_i9.LoggingHelper());
    gh.factory<_i10.ResendVerificationCodeBloc>(
        () => _i10.ResendVerificationCodeBloc());
    gh.factory<_i11.SignInBloc>(() => _i11.SignInBloc());
    await gh.singletonAsync<_i12.ThemeModel>(
      () => _i12.ThemeModel.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i13.TokenStorage<_i14.AuthModel>>(
        () => _i15.SecureAuthStorage(gh<_i6.FlutterSecureStorage>()));
    gh.factory<_i16.ValidatePhoneBloc>(() => _i16.ValidatePhoneBloc());
    gh.factory<_i17.Dio>(() => dioInjection.dio(gh<_i5.EnvModel>()));
    return this;
  }
}

class _$RouterInjection extends _i18.RouterInjection {}

class _$SecureStorageInjection extends _i19.SecureStorageInjection {}

class _$GraphQLInjection extends _i20.GraphQLInjection {}

class _$NetworkInfoInjection extends _i21.NetworkInfoInjection {}

class _$DioInjection extends _i22.DioInjection {}
