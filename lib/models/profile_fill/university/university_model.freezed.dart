// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UniversityModel _$UniversityModelFromJson(Map<String, dynamic> json) {
  return _UniversityModel.fromJson(json);
}

/// @nodoc
mixin _$UniversityModel {
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityModelCopyWith<UniversityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityModelCopyWith<$Res> {
  factory $UniversityModelCopyWith(
          UniversityModel value, $Res Function(UniversityModel) then) =
      _$UniversityModelCopyWithImpl<$Res, UniversityModel>;
  @useResult
  $Res call({String? name, String? country});
}

/// @nodoc
class _$UniversityModelCopyWithImpl<$Res, $Val extends UniversityModel>
    implements $UniversityModelCopyWith<$Res> {
  _$UniversityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UniversityModelImplCopyWith<$Res>
    implements $UniversityModelCopyWith<$Res> {
  factory _$$UniversityModelImplCopyWith(_$UniversityModelImpl value,
          $Res Function(_$UniversityModelImpl) then) =
      __$$UniversityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? country});
}

/// @nodoc
class __$$UniversityModelImplCopyWithImpl<$Res>
    extends _$UniversityModelCopyWithImpl<$Res, _$UniversityModelImpl>
    implements _$$UniversityModelImplCopyWith<$Res> {
  __$$UniversityModelImplCopyWithImpl(
      _$UniversityModelImpl _value, $Res Function(_$UniversityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? country = freezed,
  }) {
    return _then(_$UniversityModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UniversityModelImpl implements _UniversityModel {
  const _$UniversityModelImpl({this.name, this.country});

  factory _$UniversityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UniversityModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? country;

  @override
  String toString() {
    return 'UniversityModel(name: $name, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UniversityModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UniversityModelImplCopyWith<_$UniversityModelImpl> get copyWith =>
      __$$UniversityModelImplCopyWithImpl<_$UniversityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UniversityModelImplToJson(
      this,
    );
  }
}

abstract class _UniversityModel implements UniversityModel {
  const factory _UniversityModel({final String? name, final String? country}) =
      _$UniversityModelImpl;

  factory _UniversityModel.fromJson(Map<String, dynamic> json) =
      _$UniversityModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$UniversityModelImplCopyWith<_$UniversityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
