// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationUserModel _$$_LocationUserModelFromJson(Map<String, dynamic> json) =>
    _$_LocationUserModel(
      id: json['id'] as String,
      lonlat: json['lonlat'] as String?,
      displayCity: json['displayCity'] as String?,
      displayState: json['displayState'] as String?,
    );

Map<String, dynamic> _$$_LocationUserModelToJson(
        _$_LocationUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lonlat': instance.lonlat,
      'displayCity': instance.displayCity,
      'displayState': instance.displayState,
    };
