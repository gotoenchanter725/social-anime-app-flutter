import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
class UniversityModel with _$UniversityModel {
  const factory UniversityModel({
    String? name,
    String? country,
  }) = _UniversityModel;

  factory UniversityModel.initial() => const UniversityModel(
        name: '',
        country: '',
      );

  factory UniversityModel.fromJson(Map<String, dynamic> json) =>
      _$UniversityModelFromJson(json);
}
