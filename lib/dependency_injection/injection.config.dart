// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i21;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:fresh_dio/fresh_dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i11;
import 'package:senpai/core/auth/blocs/create_user_bloc.dart' as _i4;
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart'
    as _i13;
import 'package:senpai/core/auth/blocs/sign_in_bloc.dart' as _i14;
import 'package:senpai/core/auth/blocs/validate_phone_bloc.dart' as _i20;
import 'package:senpai/core/profile_fill/api/universities_api.dart' as _i19;
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart'
    as _i6;
import 'package:senpai/core/secure_storage/secure_auth_storage.dart' as _i18;
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart' as _i7;
import 'package:senpai/dependency_injection/dio_client_di.dart' as _i27;
import 'package:senpai/dependency_injection/graphql_client_di.dart' as _i25;
import 'package:senpai/dependency_injection/network_info_di.dart' as _i26;
import 'package:senpai/dependency_injection/router_di.dart' as _i22;
import 'package:senpai/dependency_injection/secure_storage_di.dart' as _i23;
import 'package:senpai/dependency_injection/university_module_di.dart' as _i24;
import 'package:senpai/domain/profile_fill/universities_usecase.dart' as _i9;
import 'package:senpai/models/auth/auth_model.dart' as _i17;
import 'package:senpai/models/env_model.dart' as _i5;
import 'package:senpai/models/theme_model.dart' as _i15;
import 'package:senpai/routes/app_router.dart' as _i3;
import 'package:senpai/utils/helpers/logging_helpers.dart' as _i12;

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
    final universityInjectionModule = _$UniversityInjectionModule();
    final graphQLInjection = _$GraphQLInjection();
    final networkInfoInjection = _$NetworkInfoInjection();
    final dioInjection = _$DioInjection();
    gh.factory<_i3.AppRouter>(() => routerInjection.router());
    gh.factory<_i4.CreateUserBloc>(() => _i4.CreateUserBloc());
    await gh.singletonAsync<_i5.EnvModel>(
      () => _i5.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i6.FetchAnimeBloc>(() => _i6.FetchAnimeBloc());
    gh.factory<_i7.FetchUserBloc>(() => _i7.FetchUserBloc());
    gh.factory<_i8.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i9.GetUniversitiesUseCase>(
        () => universityInjectionModule.universitiesRepository);
    gh.factory<_i10.GraphQLClient>(
        () => graphQLInjection.graphql(gh<_i5.EnvModel>()));
    gh.factory<_i11.InternetConnection>(() => networkInfoInjection.networkInfo);
    gh.singleton<_i12.LoggingHelper>(_i12.LoggingHelper());
    gh.factory<_i13.ResendVerificationCodeBloc>(
        () => _i13.ResendVerificationCodeBloc());
    gh.factory<_i14.SignInBloc>(() => _i14.SignInBloc());
    await gh.singletonAsync<_i15.ThemeModel>(
      () => _i15.ThemeModel.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i16.TokenStorage<_i17.AuthModel>>(
        () => _i18.SecureAuthStorage(gh<_i8.FlutterSecureStorage>()));
    gh.factory<_i19.UniversitiesApi>(
        () => universityInjectionModule.universitiesApi(gh<_i5.EnvModel>()));
    gh.factory<_i20.ValidatePhoneBloc>(() => _i20.ValidatePhoneBloc());
    gh.factory<_i21.Dio>(() => dioInjection.dio(gh<_i5.EnvModel>()));
    return this;
  }
}

class _$RouterInjection extends _i22.RouterInjection {}

class _$SecureStorageInjection extends _i23.SecureStorageInjection {}

class _$UniversityInjectionModule extends _i24.UniversityInjectionModule {}

class _$GraphQLInjection extends _i25.GraphQLInjection {}

class _$NetworkInfoInjection extends _i26.NetworkInfoInjection {}

class _$DioInjection extends _i27.DioInjection {}
