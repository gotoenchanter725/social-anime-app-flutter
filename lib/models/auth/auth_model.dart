import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/auth/user_model.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String token,
    required UserModel user,
  }) = _AuthModel;

  factory AuthModel.initial() => const AuthModel(
        token: '',
        user: UserModel(
          id: '',
          phone: '',
          createdAt: '',
          updatedAt: '',
        ),
      );

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
