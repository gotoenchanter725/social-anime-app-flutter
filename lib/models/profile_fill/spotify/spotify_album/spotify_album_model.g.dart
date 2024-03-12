// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyAlbumModelImpl _$$SpotifyAlbumModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpotifyAlbumModelImpl(
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => SpotifyImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotifyArtistModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpotifyAlbumModelImplToJson(
        _$SpotifyAlbumModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'images': instance.images,
      'artists': instance.artists,
    };
