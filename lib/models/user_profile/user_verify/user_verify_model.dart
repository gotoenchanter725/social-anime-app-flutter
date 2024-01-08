import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_verify_model.freezed.dart';
part 'user_verify_model.g.dart';

@freezed
class UserVerifyModel with _$UserVerifyModel {
  const factory UserVerifyModel({
    required int userId,
    String? status,
  }) = _UserVerifyModel;

  factory UserVerifyModel.initial() => const UserVerifyModel(
        userId: 0,
        status: '',
      );

  factory UserVerifyModel.fromJson(Map<String, dynamic> json) =>
      _$UserVerifyModelFromJson(json);
}
