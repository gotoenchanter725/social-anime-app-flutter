// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_favorite_music_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserFavoriteMusicModel _$$_UserFavoriteMusicModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserFavoriteMusicModel(
      id: json['id'] as String,
      coverUrl: json['coverUrl'] as String,
      musicType: json['musicType'] as String,
      artistName: json['artistName'] as String?,
      trackName: json['trackName'] as String?,
      spotifyId: json['spotifyId'] as String?,
    );

Map<String, dynamic> _$$_UserFavoriteMusicModelToJson(
        _$_UserFavoriteMusicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coverUrl': instance.coverUrl,
      'musicType': instance.musicType,
      'artistName': instance.artistName,
      'trackName': instance.trackName,
      'spotifyId': instance.spotifyId,
    };
