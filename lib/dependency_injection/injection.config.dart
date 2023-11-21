// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i26;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i10;
import 'package:fresh_dio/fresh_dio.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i12;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i13;
import 'package:senpai/core/auth/blocs/create_user_bloc.dart' as _i5;
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart'
    as _i16;
import 'package:senpai/core/auth/blocs/sign_in_bloc.dart' as _i18;
import 'package:senpai/core/auth/blocs/validate_phone_bloc.dart' as _i25;
import 'package:senpai/core/profile_fill/api/universities_api.dart' as _i23;
import 'package:senpai/core/profile_fill/blocs/delete_photo/delete_photo_bloc.dart'
    as _i6;
import 'package:senpai/core/profile_fill/blocs/reorder_photos/reorder_photos_bloc.dart'
    as _i15;
import 'package:senpai/core/profile_fill/blocs/upload_photo/upload_photo_bloc.dart'
    as _i24;
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart'
    as _i3;
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart'
    as _i8;
import 'package:senpai/core/profile_fill/set_user_location/set_user_location_bloc.dart'
    as _i17;
import 'package:senpai/core/secure_storage/secure_auth_storage.dart' as _i22;
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart' as _i9;
import 'package:senpai/dependency_injection/dio_client_di.dart' as _i32;
import 'package:senpai/dependency_injection/graphql_client_di.dart' as _i30;
import 'package:senpai/dependency_injection/network_info_di.dart' as _i31;
import 'package:senpai/dependency_injection/router_di.dart' as _i27;
import 'package:senpai/dependency_injection/secure_storage_di.dart' as _i28;
import 'package:senpai/dependency_injection/university_module_di.dart' as _i29;
import 'package:senpai/domain/profile_fill/universities_usecase.dart' as _i11;
import 'package:senpai/models/auth/auth_model.dart' as _i21;
import 'package:senpai/models/env_model.dart' as _i7;
import 'package:senpai/models/theme_model.dart' as _i19;
import 'package:senpai/routes/app_router.dart' as _i4;
import 'package:senpai/utils/helpers/logging_helpers.dart' as _i14;

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
    gh.factory<_i3.AddFavoriteAnimeBloc>(() => _i3.AddFavoriteAnimeBloc());
    gh.factory<_i4.AppRouter>(() => routerInjection.router());
    gh.factory<_i5.CreateUserBloc>(() => _i5.CreateUserBloc());
    gh.factory<_i6.DeletePhotoBloc>(() => _i6.DeletePhotoBloc());
    await gh.singletonAsync<_i7.EnvModel>(
      () => _i7.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i8.FetchAnimeBloc>(() => _i8.FetchAnimeBloc());
    gh.factory<_i9.FetchUserBloc>(() => _i9.FetchUserBloc());
    gh.factory<_i10.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i11.GetUniversitiesUseCase>(
        () => universityInjectionModule.universitiesRepository);
    gh.factory<_i12.GraphQLClient>(
        () => graphQLInjection.graphql(gh<_i7.EnvModel>()));
    gh.factory<_i13.InternetConnection>(() => networkInfoInjection.networkInfo);
    gh.singleton<_i14.LoggingHelper>(_i14.LoggingHelper());
    gh.factory<_i15.ReorderPhotosBloc>(() => _i15.ReorderPhotosBloc());
    gh.factory<_i16.ResendVerificationCodeBloc>(
        () => _i16.ResendVerificationCodeBloc());
    gh.factory<_i17.SetUserLocationBloc>(() => _i17.SetUserLocationBloc());
    gh.factory<_i18.SignInBloc>(() => _i18.SignInBloc());
    await gh.singletonAsync<_i19.ThemeModel>(
      () => _i19.ThemeModel.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i20.TokenStorage<_i21.AuthModel>>(
        () => _i22.SecureAuthStorage(gh<_i10.FlutterSecureStorage>()));
    gh.factory<_i23.UniversitiesApi>(
        () => universityInjectionModule.universitiesApi(gh<_i7.EnvModel>()));
    gh.factory<_i24.UploadPhotoBloc>(() => _i24.UploadPhotoBloc());
    gh.factory<_i25.ValidatePhoneBloc>(() => _i25.ValidatePhoneBloc());
    gh.factory<_i26.Dio>(() => dioInjection.dio(gh<_i7.EnvModel>()));
    return this;
  }
}

class _$RouterInjection extends _i27.RouterInjection {}

class _$SecureStorageInjection extends _i28.SecureStorageInjection {}

class _$UniversityInjectionModule extends _i29.UniversityInjectionModule {}

class _$GraphQLInjection extends _i30.GraphQLInjection {}

class _$NetworkInfoInjection extends _i31.NetworkInfoInjection {}

class _$DioInjection extends _i32.DioInjection {}
