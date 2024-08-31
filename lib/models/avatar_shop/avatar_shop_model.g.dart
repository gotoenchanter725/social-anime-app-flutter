// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarsShopModelImpl _$$AvatarsShopModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvatarsShopModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      guid: json['guid'] as String,
      userId: json['userId'] as String?,
      photoUrl: json['photoUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      productId: json['productId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$AvatarsShopModelImplToJson(
        _$AvatarsShopModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guid': instance.guid,
      'userId': instance.userId,
      'photoUrl': instance.photoUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'productId': instance.productId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'isDefault': instance.isDefault,
    };
