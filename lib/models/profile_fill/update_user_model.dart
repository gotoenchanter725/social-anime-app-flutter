import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel with _$UpdateUserModel {
  const factory UpdateUserModel({
    required String id,
    String? firstName,
    String? birthday,
    int? gender,
    int? desiredGender,
    String? occupation,
    String? school,
    String? bio,

    //add all variable
  }) = _UpdateUserModel;

  factory UpdateUserModel.initial() => const UpdateUserModel(
        id: '',
        firstName: '',
        birthday: '',
        gender: 0,
        desiredGender: 1,
        occupation: '',
        school: '',
        bio: '',
      );

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserModelFromJson(json);
}
