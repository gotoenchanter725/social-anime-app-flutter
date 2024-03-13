// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyArtistModelImpl _$$SpotifyArtistModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SpotifyArtistModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => SpotifyImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpotifyArtistModelImplToJson(
        _$SpotifyArtistModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };
