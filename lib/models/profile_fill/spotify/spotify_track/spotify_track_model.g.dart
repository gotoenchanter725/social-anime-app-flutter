// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_track_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpotifyTrackModel _$$_SpotifyTrackModelFromJson(Map<String, dynamic> json) =>
    _$_SpotifyTrackModel(
      id: json['id'] as String,
      name: json['name'] as String,
      album: SpotifyAlbumModel.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SpotifyTrackModelToJson(
        _$_SpotifyTrackModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'album': instance.album,
    };
