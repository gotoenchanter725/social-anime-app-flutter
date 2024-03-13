// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserVerifyModel _$UserVerifyModelFromJson(Map<String, dynamic> json) {
  return _UserVerifyModel.fromJson(json);
}

/// @nodoc
mixin _$UserVerifyModel {
  int get userId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserVerifyModelCopyWith<UserVerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerifyModelCopyWith<$Res> {
  factory $UserVerifyModelCopyWith(
          UserVerifyModel value, $Res Function(UserVerifyModel) then) =
      _$UserVerifyModelCopyWithImpl<$Res, UserVerifyModel>;
  @useResult
  $Res call({int userId, String? status});
}

/// @nodoc
class _$UserVerifyModelCopyWithImpl<$Res, $Val extends UserVerifyModel>
    implements $UserVerifyModelCopyWith<$Res> {
  _$UserVerifyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserVerifyModelImplCopyWith<$Res>
    implements $UserVerifyModelCopyWith<$Res> {
  factory _$$UserVerifyModelImplCopyWith(_$UserVerifyModelImpl value,
          $Res Function(_$UserVerifyModelImpl) then) =
      __$$UserVerifyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String? status});
}

/// @nodoc
class __$$UserVerifyModelImplCopyWithImpl<$Res>
    extends _$UserVerifyModelCopyWithImpl<$Res, _$UserVerifyModelImpl>
    implements _$$UserVerifyModelImplCopyWith<$Res> {
  __$$UserVerifyModelImplCopyWithImpl(
      _$UserVerifyModelImpl _value, $Res Function(_$UserVerifyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = freezed,
  }) {
    return _then(_$UserVerifyModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserVerifyModelImpl implements _UserVerifyModel {
  const _$UserVerifyModelImpl({required this.userId, this.status});

  factory _$UserVerifyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserVerifyModelImplFromJson(json);

  @override
  final int userId;
  @override
  final String? status;

  @override
  String toString() {
    return 'UserVerifyModel(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerifyModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerifyModelImplCopyWith<_$UserVerifyModelImpl> get copyWith =>
      __$$UserVerifyModelImplCopyWithImpl<_$UserVerifyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserVerifyModelImplToJson(
      this,
    );
  }
}

abstract class _UserVerifyModel implements UserVerifyModel {
  const factory _UserVerifyModel(
      {required final int userId,
      final String? status}) = _$UserVerifyModelImpl;

  factory _UserVerifyModel.fromJson(Map<String, dynamic> json) =
      _$UserVerifyModelImpl.fromJson;

  @override
  int get userId;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$UserVerifyModelImplCopyWith<_$UserVerifyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
