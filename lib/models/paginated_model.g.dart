// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedModel<T> _$PaginatedModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedModel<T>(
      currentPage: (json['currentPage'] as num).toInt(),
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginatedModelToJson<T>(
  PaginatedModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'items': instance.items.map(toJsonT).toList(),
    };
