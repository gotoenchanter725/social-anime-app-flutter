// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationUserModelImpl _$$LocationUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationUserModelImpl(
      id: json['id'] as String,
      lonlat: json['lonlat'] as String?,
      displayCity: json['displayCity'] as String?,
      displayState: json['displayState'] as String?,
    );

Map<String, dynamic> _$$LocationUserModelImplToJson(
        _$LocationUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lonlat': instance.lonlat,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
    };
