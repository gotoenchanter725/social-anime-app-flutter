// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyTrackModelImpl _$$SpotifyTrackModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpotifyTrackModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      album: SpotifyAlbumModel.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpotifyTrackModelImplToJson(
        _$SpotifyTrackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'album': instance.album,
    };
