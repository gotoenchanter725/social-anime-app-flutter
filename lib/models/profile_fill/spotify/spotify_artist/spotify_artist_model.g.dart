// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_artist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpotifyArtistModel _$$_SpotifyArtistModelFromJson(
        Map<String, dynamic> json) =>
    _$_SpotifyArtistModel(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => SpotifyImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpotifyArtistModelToJson(
        _$_SpotifyArtistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };
