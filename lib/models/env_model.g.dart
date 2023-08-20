// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EnvModel _$$_EnvModelFromJson(Map<String, dynamic> json) => _$_EnvModel(
      env: json['env'] as String,
      debug: json['debug'] as bool,
      debugShowCheckedModeBanner: json['debugShowCheckedModeBanner'] as bool,
      debugShowMaterialGrid: json['debugShowMaterialGrid'] as bool,
      debugApiClient: json['debugApiClient'] as bool,
      apiUrl: json['apiUrl'] as String,
    );

Map<String, dynamic> _$$_EnvModelToJson(_$_EnvModel instance) =>
    <String, dynamic>{
      'env': instance.env,
      'debug': instance.debug,
      'debugShowCheckedModeBanner': instance.debugShowCheckedModeBanner,
      'debugShowMaterialGrid': instance.debugShowMaterialGrid,
      'debugApiClient': instance.debugApiClient,
      'apiUrl': instance.apiUrl,
    };
