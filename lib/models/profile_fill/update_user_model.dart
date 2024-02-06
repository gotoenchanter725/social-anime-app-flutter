import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel with _$UpdateUserModel {
  const factory UpdateUserModel({
    required String id,
    required String phone,
    String? firstName,
    DateTime? birthday,
    int? gender,
    int? desiredGender,
    String? occupation,
    String? school,
    String? bio,
    bool? hasLocationHidden,
    bool? isDisplayingRecentlyActive,
    bool? isDisplayingActive,
  }) = _UpdateUserModel;

  factory UpdateUserModel.initial() => const UpdateUserModel(
        id: '',
        phone: '',
        firstName: '',
        birthday: null,
        gender: 0,
        desiredGender: 1,
        occupation: '',
        school: '',
        bio: '',
        hasLocationHidden: false,
        isDisplayingRecentlyActive: false,
        isDisplayingActive: false,
      );

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserModelFromJson(json);
}
