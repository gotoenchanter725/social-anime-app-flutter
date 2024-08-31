// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileFilterModelImpl _$$ProfileFilterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileFilterModelImpl(
      milesAway: (json['milesAway'] as num).toInt(),
      minAge: (json['minAge'] as num).toInt(),
      maxAge: (json['maxAge'] as num).toInt(),
      hasBio: json['hasBio'] as bool,
      verified: json['verified'] as bool,
      animeIds:
          (json['animeIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ProfileFilterModelImplToJson(
        _$ProfileFilterModelImpl instance) =>
    <String, dynamic>{
      'milesAway': instance.milesAway,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
      'hasBio': instance.hasBio,
      'verified': instance.verified,
      'animeIds': instance.animeIds,
    };
