// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeModelImpl _$$AnimeModelImplFromJson(Map<String, dynamic> json) =>
    _$AnimeModelImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      japaneseTitle: json['japaneseTitle'] as String?,
      genres: json['genres'] as String?,
      cover: json['cover'] as String?,
      episodes: (json['episodes'] as num?)?.toInt(),
      popularity: (json['popularity'] as num?)?.toInt(),
      averageScore: (json['averageScore'] as num?)?.toInt(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      studios: json['studios'] as String?,
      year: (json['year'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$AnimeModelImplToJson(_$AnimeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'japaneseTitle': instance.japaneseTitle,
      'genres': instance.genres,
      'cover': instance.cover,
      'episodes': instance.episodes,
      'popularity': instance.popularity,
      'averageScore': instance.averageScore,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'studios': instance.studios,
      'year': instance.year,
      'status': instance.status,
    };
