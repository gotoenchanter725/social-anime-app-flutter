// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) {
  return _UpdateUserModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserModel {
  String get id => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int? get desiredGender => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  String? get school => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserModelCopyWith<UpdateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserModelCopyWith<$Res> {
  factory $UpdateUserModelCopyWith(
          UpdateUserModel value, $Res Function(UpdateUserModel) then) =
      _$UpdateUserModelCopyWithImpl<$Res, UpdateUserModel>;
  @useResult
  $Res call(
      {String id,
      String? firstName,
      String? birthday,
      int? gender,
      int? desiredGender,
      String? occupation,
      String? school,
      String? bio});
}

/// @nodoc
class _$UpdateUserModelCopyWithImpl<$Res, $Val extends UpdateUserModel>
    implements $UpdateUserModelCopyWith<$Res> {
  _$UpdateUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? desiredGender = freezed,
    Object? occupation = freezed,
    Object? school = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      desiredGender: freezed == desiredGender
          ? _value.desiredGender
          : desiredGender // ignore: cast_nullable_to_non_nullable
              as int?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserModelCopyWith<$Res>
    implements $UpdateUserModelCopyWith<$Res> {
  factory _$$_UpdateUserModelCopyWith(
          _$_UpdateUserModel value, $Res Function(_$_UpdateUserModel) then) =
      __$$_UpdateUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? firstName,
      String? birthday,
      int? gender,
      int? desiredGender,
      String? occupation,
      String? school,
      String? bio});
}

/// @nodoc
class __$$_UpdateUserModelCopyWithImpl<$Res>
    extends _$UpdateUserModelCopyWithImpl<$Res, _$_UpdateUserModel>
    implements _$$_UpdateUserModelCopyWith<$Res> {
  __$$_UpdateUserModelCopyWithImpl(
      _$_UpdateUserModel _value, $Res Function(_$_UpdateUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? desiredGender = freezed,
    Object? occupation = freezed,
    Object? school = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$_UpdateUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      desiredGender: freezed == desiredGender
          ? _value.desiredGender
          : desiredGender // ignore: cast_nullable_to_non_nullable
              as int?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserModel implements _UpdateUserModel {
  const _$_UpdateUserModel(
      {required this.id,
      this.firstName,
      this.birthday,
      this.gender,
      this.desiredGender,
      this.occupation,
      this.school,
      this.bio});

  factory _$_UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserModelFromJson(json);

  @override
  final String id;
  @override
  final String? firstName;
  @override
  final String? birthday;
  @override
  final int? gender;
  @override
  final int? desiredGender;
  @override
  final String? occupation;
  @override
  final String? school;
  @override
  final String? bio;

  @override
  String toString() {
    return 'UpdateUserModel(id: $id, firstName: $firstName, birthday: $birthday, gender: $gender, desiredGender: $desiredGender, occupation: $occupation, school: $school, bio: $bio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.desiredGender, desiredGender) ||
                other.desiredGender == desiredGender) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstName, birthday, gender,
      desiredGender, occupation, school, bio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserModelCopyWith<_$_UpdateUserModel> get copyWith =>
      __$$_UpdateUserModelCopyWithImpl<_$_UpdateUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserModelToJson(
      this,
    );
  }
}

abstract class _UpdateUserModel implements UpdateUserModel {
  const factory _UpdateUserModel(
      {required final String id,
      final String? firstName,
      final String? birthday,
      final int? gender,
      final int? desiredGender,
      final String? occupation,
      final String? school,
      final String? bio}) = _$_UpdateUserModel;

  factory _UpdateUserModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserModel.fromJson;

  @override
  String get id;
  @override
  String? get firstName;
  @override
  String? get birthday;
  @override
  int? get gender;
  @override
  int? get desiredGender;
  @override
  String? get occupation;
  @override
  String? get school;
  @override
  String? get bio;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserModelCopyWith<_$_UpdateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
