// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileFilterModel _$ProfileFilterModelFromJson(Map<String, dynamic> json) {
  return _ProfileFilterModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileFilterModel {
  int get milesAway => throw _privateConstructorUsedError;
  int get minAge => throw _privateConstructorUsedError;
  int get maxAge => throw _privateConstructorUsedError;
  bool get hasBio => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  List<String> get animeIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileFilterModelCopyWith<ProfileFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFilterModelCopyWith<$Res> {
  factory $ProfileFilterModelCopyWith(
          ProfileFilterModel value, $Res Function(ProfileFilterModel) then) =
      _$ProfileFilterModelCopyWithImpl<$Res, ProfileFilterModel>;
  @useResult
  $Res call(
      {int milesAway,
      int minAge,
      int maxAge,
      bool hasBio,
      bool verified,
      List<String> animeIds});
}

/// @nodoc
class _$ProfileFilterModelCopyWithImpl<$Res, $Val extends ProfileFilterModel>
    implements $ProfileFilterModelCopyWith<$Res> {
  _$ProfileFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milesAway = null,
    Object? minAge = null,
    Object? maxAge = null,
    Object? hasBio = null,
    Object? verified = null,
    Object? animeIds = null,
  }) {
    return _then(_value.copyWith(
      milesAway: null == milesAway
          ? _value.milesAway
          : milesAway // ignore: cast_nullable_to_non_nullable
              as int,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      hasBio: null == hasBio
          ? _value.hasBio
          : hasBio // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      animeIds: null == animeIds
          ? _value.animeIds
          : animeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileFilterModelImplCopyWith<$Res>
    implements $ProfileFilterModelCopyWith<$Res> {
  factory _$$ProfileFilterModelImplCopyWith(_$ProfileFilterModelImpl value,
          $Res Function(_$ProfileFilterModelImpl) then) =
      __$$ProfileFilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int milesAway,
      int minAge,
      int maxAge,
      bool hasBio,
      bool verified,
      List<String> animeIds});
}

/// @nodoc
class __$$ProfileFilterModelImplCopyWithImpl<$Res>
    extends _$ProfileFilterModelCopyWithImpl<$Res, _$ProfileFilterModelImpl>
    implements _$$ProfileFilterModelImplCopyWith<$Res> {
  __$$ProfileFilterModelImplCopyWithImpl(_$ProfileFilterModelImpl _value,
      $Res Function(_$ProfileFilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? milesAway = null,
    Object? minAge = null,
    Object? maxAge = null,
    Object? hasBio = null,
    Object? verified = null,
    Object? animeIds = null,
  }) {
    return _then(_$ProfileFilterModelImpl(
      milesAway: null == milesAway
          ? _value.milesAway
          : milesAway // ignore: cast_nullable_to_non_nullable
              as int,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      maxAge: null == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int,
      hasBio: null == hasBio
          ? _value.hasBio
          : hasBio // ignore: cast_nullable_to_non_nullable
              as bool,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      animeIds: null == animeIds
          ? _value._animeIds
          : animeIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileFilterModelImpl implements _ProfileFilterModel {
  const _$ProfileFilterModelImpl(
      {required this.milesAway,
      required this.minAge,
      required this.maxAge,
      required this.hasBio,
      required this.verified,
      required final List<String> animeIds})
      : _animeIds = animeIds;

  factory _$ProfileFilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileFilterModelImplFromJson(json);

  @override
  final int milesAway;
  @override
  final int minAge;
  @override
  final int maxAge;
  @override
  final bool hasBio;
  @override
  final bool verified;
  final List<String> _animeIds;
  @override
  List<String> get animeIds {
    if (_animeIds is EqualUnmodifiableListView) return _animeIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animeIds);
  }

  @override
  String toString() {
    return 'ProfileFilterModel(milesAway: $milesAway, minAge: $minAge, maxAge: $maxAge, hasBio: $hasBio, verified: $verified, animeIds: $animeIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFilterModelImpl &&
            (identical(other.milesAway, milesAway) ||
                other.milesAway == milesAway) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.hasBio, hasBio) || other.hasBio == hasBio) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            const DeepCollectionEquality().equals(other._animeIds, _animeIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, milesAway, minAge, maxAge,
      hasBio, verified, const DeepCollectionEquality().hash(_animeIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileFilterModelImplCopyWith<_$ProfileFilterModelImpl> get copyWith =>
      __$$ProfileFilterModelImplCopyWithImpl<_$ProfileFilterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileFilterModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileFilterModel implements ProfileFilterModel {
  const factory _ProfileFilterModel(
      {required final int milesAway,
      required final int minAge,
      required final int maxAge,
      required final bool hasBio,
      required final bool verified,
      required final List<String> animeIds}) = _$ProfileFilterModelImpl;

  factory _ProfileFilterModel.fromJson(Map<String, dynamic> json) =
      _$ProfileFilterModelImpl.fromJson;

  @override
  int get milesAway;
  @override
  int get minAge;
  @override
  int get maxAge;
  @override
  bool get hasBio;
  @override
  bool get verified;
  @override
  List<String> get animeIds;
  @override
  @JsonKey(ignore: true)
  _$$ProfileFilterModelImplCopyWith<_$ProfileFilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
