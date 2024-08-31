import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_shop_model.freezed.dart';
part 'avatar_shop_model.g.dart';

@freezed
class AvatarsShopModel with _$AvatarsShopModel {
  const factory AvatarsShopModel({
    String? id,
    required String name,
    required String guid,
    String? userId,
    required String photoUrl,
    required String thumbnailUrl,
    String? productId,
    DateTime? createdAt,
    @Default(false) bool isDefault,
  }) = _AvatarsShopModel;

  factory AvatarsShopModel.initial() => const AvatarsShopModel(
        name: '',
        guid: '',
        userId: '',
        photoUrl: '',
        thumbnailUrl: '',
        productId: '',
        createdAt: null,
        isDefault: false, // Default value for the initial factory
      );

  factory AvatarsShopModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarsShopModelFromJson(json);
}
