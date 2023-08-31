import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel with _$UpdateUserModel {
  const factory UpdateUserModel({
    required String id,
    required String firstName,
    required String birthday,
    //add all variable
  }) = _UpdateUserModel;

  factory UpdateUserModel.initial() => const UpdateUserModel(
        id: '',
        firstName: '',
        birthday: '',
      );

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserModelFromJson(json);
}
