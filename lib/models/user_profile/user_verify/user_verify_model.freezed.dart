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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_UserVerifyModelCopyWith<$Res>
    implements $UserVerifyModelCopyWith<$Res> {
  factory _$$_UserVerifyModelCopyWith(
          _$_UserVerifyModel value, $Res Function(_$_UserVerifyModel) then) =
      __$$_UserVerifyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String? status});
}

/// @nodoc
class __$$_UserVerifyModelCopyWithImpl<$Res>
    extends _$UserVerifyModelCopyWithImpl<$Res, _$_UserVerifyModel>
    implements _$$_UserVerifyModelCopyWith<$Res> {
  __$$_UserVerifyModelCopyWithImpl(
      _$_UserVerifyModel _value, $Res Function(_$_UserVerifyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? status = freezed,
  }) {
    return _then(_$_UserVerifyModel(
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
class _$_UserVerifyModel implements _UserVerifyModel {
  const _$_UserVerifyModel({required this.userId, this.status});

  factory _$_UserVerifyModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserVerifyModelFromJson(json);

  @override
  final int userId;
  @override
  final String? status;

  @override
  String toString() {
    return 'UserVerifyModel(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserVerifyModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserVerifyModelCopyWith<_$_UserVerifyModel> get copyWith =>
      __$$_UserVerifyModelCopyWithImpl<_$_UserVerifyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserVerifyModelToJson(
      this,
    );
  }
}

abstract class _UserVerifyModel implements UserVerifyModel {
  const factory _UserVerifyModel(
      {required final int userId, final String? status}) = _$_UserVerifyModel;

  factory _UserVerifyModel.fromJson(Map<String, dynamic> json) =
      _$_UserVerifyModel.fromJson;

  @override
  int get userId;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_UserVerifyModelCopyWith<_$_UserVerifyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
