// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i55;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i20;
import 'package:fresh_dio/fresh_dio.dart' as _i41;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_flutter/graphql_flutter.dart' as _i24;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i26;
import 'package:senpai/core/application_locale/blocs/application_locale_bloc.dart'
    as _i8;
import 'package:senpai/core/auth/blocs/create_user_bloc.dart' as _i9;
import 'package:senpai/core/auth/blocs/resend_verification_code_bloc.dart'
    as _i32;
import 'package:senpai/core/auth/blocs/sign_in_bloc.dart' as _i35;
import 'package:senpai/core/auth/blocs/validate_phone_bloc.dart' as _i53;
import 'package:senpai/core/chat/blocs/send_message_bloc.dart' as _i33;
import 'package:senpai/core/feed/blocs/fetch_feed_bloc.dart' as _i16;
import 'package:senpai/core/feed/blocs/get_distance_between_users_bloc.dart'
    as _i21;
import 'package:senpai/core/feed/blocs/like_user_bloc.dart' as _i27;
import 'package:senpai/core/feed/blocs/undo_like_user_bloc.dart' as _i48;
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart' as _i17;
import 'package:senpai/core/profile_fill/api/spotify/sporify_auth_api.dart'
    as _i36;
import 'package:senpai/core/profile_fill/api/spotify/spotify_profile_info_api.dart'
    as _i38;
import 'package:senpai/core/profile_fill/api/universities_api.dart' as _i49;
import 'package:senpai/core/profile_fill/blocs/delete_photo/delete_photo_bloc.dart'
    as _i12;
import 'package:senpai/core/profile_fill/blocs/reorder_photos/reorder_photos_bloc.dart'
    as _i30;
import 'package:senpai/core/profile_fill/blocs/upload_photo/upload_photo_bloc.dart'
    as _i52;
import 'package:senpai/core/profile_fill/favorite_anime/add_favorite_anime_bloc.dart'
    as _i4;
import 'package:senpai/core/profile_fill/favorite_anime/delete_favorite_anime_bloc.dart'
    as _i10;
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart'
    as _i15;
import 'package:senpai/core/profile_fill/favorite_music/add_favorite_music_bloc.dart'
    as _i5;
import 'package:senpai/core/profile_fill/favorite_music/delete_favorite_music_bloc.dart'
    as _i11;
import 'package:senpai/core/profile_fill/set_user_location/set_user_location_bloc.dart'
    as _i34;
import 'package:senpai/core/secure_storage/device_token_storage.dart' as _i47;
import 'package:senpai/core/secure_storage/secure_auth_storage.dart' as _i43;
import 'package:senpai/core/secure_storage/secure_spotify_auth_storage.dart'
    as _i45;
import 'package:senpai/core/user/blocs/add_device_token/add_device_token_bloc.dart'
    as _i3;
import 'package:senpai/core/user/blocs/add_super_likes/add_super_likes.dart'
    as _i6;
import 'package:senpai/core/user/blocs/delete_user/delete_user_bloc.dart'
    as _i13;
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart' as _i18;
import 'package:senpai/core/user/blocs/grant_user_premium/grant_user_premium_bloc.dart'
    as _i23;
import 'package:senpai/core/user/blocs/remove_device_token/remove_device_token.dart'
    as _i29;
import 'package:senpai/core/user/blocs/report_user/report_user_bloc.dart'
    as _i31;
import 'package:senpai/core/user/blocs/unmatch_user/unmatch_bloc.dart' as _i50;
import 'package:senpai/core/user/blocs/update_user/update_user_bloc.dart'
    as _i51;
import 'package:senpai/core/user/blocs/verify_photo_user/verify_photo_user_bloc.dart'
    as _i54;
import 'package:senpai/core/user/blocs/verify_request_user/fetch_verify_requests.dart'
    as _i19;
import 'package:senpai/dependency_injection/dio_client_di.dart' as _i62;
import 'package:senpai/dependency_injection/graphql_client_di.dart' as _i59;
import 'package:senpai/dependency_injection/network_info_di.dart' as _i60;
import 'package:senpai/dependency_injection/router_di.dart' as _i56;
import 'package:senpai/dependency_injection/secure_storage_di.dart' as _i57;
import 'package:senpai/dependency_injection/spotify_module_di.dart' as _i61;
import 'package:senpai/dependency_injection/university_module_di.dart' as _i58;
import 'package:senpai/domain/profile_fill/spotify/spotify_auth_usecase.dart'
    as _i37;
import 'package:senpai/domain/profile_fill/spotify/spotify_fetch_user_info_usecase.dart'
    as _i39;
import 'package:senpai/domain/profile_fill/universities_usecase.dart' as _i22;
import 'package:senpai/models/auth/auth_model.dart' as _i42;
import 'package:senpai/models/auth/device_token_model.dart' as _i46;
import 'package:senpai/models/env_model.dart' as _i14;
import 'package:senpai/models/spotify_auth/spotify_auth_model.dart' as _i44;
import 'package:senpai/models/theme_model.dart' as _i40;
import 'package:senpai/routes/app_router.dart' as _i7;
import 'package:senpai/screens/home/bloc/home_storage_bloc.dart' as _i25;
import 'package:senpai/utils/helpers/logging_helpers.dart' as _i28;

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
    final spotifyInjectionModule = _$SpotifyInjectionModule();
    final dioInjection = _$DioInjection();
    gh.factory<_i3.AddDeviceTokenBloc>(() => _i3.AddDeviceTokenBloc());
    gh.factory<_i4.AddFavoriteAnimeBloc>(() => _i4.AddFavoriteAnimeBloc());
    gh.factory<_i5.AddFavoriteMusicBloc>(() => _i5.AddFavoriteMusicBloc());
    gh.factory<_i6.AddSuperLikesBloc>(() => _i6.AddSuperLikesBloc());
    gh.factory<_i7.AppRouter>(() => routerInjection.router());
    gh.factory<_i8.ApplicationLocaleBloc>(() => _i8.ApplicationLocaleBloc());
    gh.factory<_i9.CreateUserBloc>(() => _i9.CreateUserBloc());
    gh.factory<_i10.DeleteFavoriteAnimeBloc>(
        () => _i10.DeleteFavoriteAnimeBloc());
    gh.factory<_i11.DeleteFavoriteMusicBloc>(
        () => _i11.DeleteFavoriteMusicBloc());
    gh.factory<_i12.DeletePhotoBloc>(() => _i12.DeletePhotoBloc());
    gh.factory<_i13.DeleteUserBloc>(() => _i13.DeleteUserBloc());
    await gh.singletonAsync<_i14.EnvModel>(
      () => _i14.EnvModel.create(),
      preResolve: true,
    );
    gh.factory<_i15.FetchAnimeBloc>(() => _i15.FetchAnimeBloc());
    gh.factory<_i16.FetchFeedBloc>(() => _i16.FetchFeedBloc());
    gh.factory<_i17.FetchLobbyCountBloc>(() => _i17.FetchLobbyCountBloc());
    gh.factory<_i18.FetchUserBloc>(() => _i18.FetchUserBloc());
    gh.factory<_i19.FetchVerifyRequestsBloc>(
        () => _i19.FetchVerifyRequestsBloc());
    gh.factory<_i20.FlutterSecureStorage>(
        () => secureStorageInjection.storage());
    gh.factory<_i21.GetDistanceBetweenUsersBloc>(
        () => _i21.GetDistanceBetweenUsersBloc());
    gh.factory<_i22.GetUniversitiesUseCase>(
        () => universityInjectionModule.universitiesRepository);
    gh.factory<_i23.GrantUserPremiumBloc>(() => _i23.GrantUserPremiumBloc());
    gh.factory<_i24.GraphQLClient>(
        () => graphQLInjection.graphql(gh<_i14.EnvModel>()));
    gh.factory<_i25.HomeStorageBloc>(() => _i25.HomeStorageBloc());
    gh.factory<_i26.InternetConnection>(() => networkInfoInjection.networkInfo);
    gh.factory<_i27.LikeUserBloc>(() => _i27.LikeUserBloc());
    gh.singleton<_i28.LoggingHelper>(_i28.LoggingHelper());
    gh.factory<_i29.RemoveDeviceTokenBloc>(() => _i29.RemoveDeviceTokenBloc());
    gh.factory<_i30.ReorderPhotosBloc>(() => _i30.ReorderPhotosBloc());
    gh.factory<_i31.ReportUserBloc>(() => _i31.ReportUserBloc());
    gh.factory<_i32.ResendVerificationCodeBloc>(
        () => _i32.ResendVerificationCodeBloc());
    gh.factory<_i33.SendMessageBloc>(() => _i33.SendMessageBloc());
    gh.factory<_i34.SetUserLocationBloc>(() => _i34.SetUserLocationBloc());
    gh.factory<_i35.SignInBloc>(() => _i35.SignInBloc());
    gh.factory<_i36.SpotifyAuthApi>(
        () => spotifyInjectionModule.spotifyAuthApi(gh<_i14.EnvModel>()));
    gh.factory<_i37.SpotifyAuthUseCase>(
        () => spotifyInjectionModule.spotifyAuthRepository);
    gh.factory<_i38.SpotifyFetchUserInfoApi>(() =>
        spotifyInjectionModule.spotifyFetchUserInfoApi(gh<_i14.EnvModel>()));
    gh.factory<_i39.SpotifyFetchUserInfoUseCase>(
        () => spotifyInjectionModule.spotifyFetchUserInfoRepository);
    await gh.singletonAsync<_i40.ThemeModel>(
      () => _i40.ThemeModel.create(),
      preResolve: true,
    );
    gh.lazySingleton<_i41.TokenStorage<_i42.AuthModel>>(
        () => _i43.SecureAuthStorage(gh<_i20.FlutterSecureStorage>()));
    gh.lazySingleton<_i41.TokenStorage<_i44.SpotifyAuthModel>>(
        () => _i45.SecureSpotifyAuthStorage(gh<_i20.FlutterSecureStorage>()));
    gh.lazySingleton<_i41.TokenStorage<_i46.DeviceTokenModel>>(
        () => _i47.SecureDeviceTokenStorage(gh<_i20.FlutterSecureStorage>()));
    gh.factory<_i48.UndoLikeUserBloc>(() => _i48.UndoLikeUserBloc());
    gh.factory<_i49.UniversitiesApi>(
        () => universityInjectionModule.universitiesApi(gh<_i14.EnvModel>()));
    gh.factory<_i50.UnmatchUserBloc>(() => _i50.UnmatchUserBloc());
    gh.factory<_i51.UpdateUserBloc>(() => _i51.UpdateUserBloc());
    gh.factory<_i52.UploadPhotoBloc>(() => _i52.UploadPhotoBloc());
    gh.factory<_i53.ValidatePhoneBloc>(() => _i53.ValidatePhoneBloc());
    gh.factory<_i54.VerifyPhotoUserBloc>(() => _i54.VerifyPhotoUserBloc());
    gh.factory<_i55.Dio>(() => dioInjection.dio(gh<_i14.EnvModel>()));
    return this;
  }
}

class _$RouterInjection extends _i56.RouterInjection {}

class _$SecureStorageInjection extends _i57.SecureStorageInjection {}

class _$UniversityInjectionModule extends _i58.UniversityInjectionModule {}

class _$GraphQLInjection extends _i59.GraphQLInjection {}

class _$NetworkInfoInjection extends _i60.NetworkInfoInjection {}

class _$SpotifyInjectionModule extends _i61.SpotifyInjectionModule {}

class _$DioInjection extends _i62.DioInjection {}
