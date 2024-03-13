// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyAuthModelImpl _$$SpotifyAuthModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpotifyAuthModelImpl(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$SpotifyAuthModelImplToJson(
        _$SpotifyAuthModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
