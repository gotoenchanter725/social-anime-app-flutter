// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnvModelImpl _$$EnvModelImplFromJson(Map<String, dynamic> json) =>
    _$EnvModelImpl(
      env: json['env'] as String,
      debug: json['debug'] as bool,
      debugShowCheckedModeBanner: json['debugShowCheckedModeBanner'] as bool,
      debugShowMaterialGrid: json['debugShowMaterialGrid'] as bool,
      debugApiClient: json['debugApiClient'] as bool,
      graphApiUrl: json['graphApiUrl'] as String,
      httpApiUrl: json['httpApiUrl'] as String,
      httpApiUrlUniversities: json['httpApiUrlUniversities'] as String,
      webSocketUrl: json['webSocketUrl'] as String,
      httpApiAccountsSpotify: json['httpApiAccountsSpotify'] as String,
      httpApiSpotify: json['httpApiSpotify'] as String,
      spotifyClientId: json['spotifyClientId'] as String,
      spotifyClientSecret: json['spotifyClientSecret'] as String,
      spotifyRedirectUri: json['spotifyRedirectUri'] as String,
      spotifyCallbackUrlScheme: json['spotifyCallbackUrlScheme'] as String,
      giphyApiKey: json['giphyApiKey'] as String,
    );

Map<String, dynamic> _$$EnvModelImplToJson(_$EnvModelImpl instance) =>
    <String, dynamic>{
      'env': instance.env,
      'debug': instance.debug,
      'debugShowCheckedModeBanner': instance.debugShowCheckedModeBanner,
      'debugShowMaterialGrid': instance.debugShowMaterialGrid,
      'debugApiClient': instance.debugApiClient,
      'graphApiUrl': instance.graphApiUrl,
      'httpApiUrl': instance.httpApiUrl,
      'httpApiUrlUniversities': instance.httpApiUrlUniversities,
      'webSocketUrl': instance.webSocketUrl,
      'httpApiAccountsSpotify': instance.httpApiAccountsSpotify,
      'httpApiSpotify': instance.httpApiSpotify,
      'spotifyClientId': instance.spotifyClientId,
      'spotifyClientSecret': instance.spotifyClientSecret,
      'spotifyRedirectUri': instance.spotifyRedirectUri,
      'spotifyCallbackUrlScheme': instance.spotifyCallbackUrlScheme,
      'giphyApiKey': instance.giphyApiKey,
    };
