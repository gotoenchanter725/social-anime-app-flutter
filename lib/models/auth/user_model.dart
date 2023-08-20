import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String phone,
    required String createdAt,
    required String updatedAt,
  }) = _UserModel;

  factory UserModel.initial() => const UserModel(
        id: '',
        phone: '',
        createdAt: '',
        updatedAt: '',
      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
