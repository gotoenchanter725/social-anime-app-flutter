// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikeModel _$LikeModelFromJson(Map<String, dynamic> json) {
  return _LikeModel.fromJson(json);
}

/// @nodoc
mixin _$LikeModel {
  int get userId => throw _privateConstructorUsedError;
  int get likeeId => throw _privateConstructorUsedError;
  String get likeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeModelCopyWith<LikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeModelCopyWith<$Res> {
  factory $LikeModelCopyWith(LikeModel value, $Res Function(LikeModel) then) =
      _$LikeModelCopyWithImpl<$Res, LikeModel>;
  @useResult
  $Res call({int userId, int likeeId, String likeType});
}

/// @nodoc
class _$LikeModelCopyWithImpl<$Res, $Val extends LikeModel>
    implements $LikeModelCopyWith<$Res> {
  _$LikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? likeeId = null,
    Object? likeType = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      likeeId: null == likeeId
          ? _value.likeeId
          : likeeId // ignore: cast_nullable_to_non_nullable
              as int,
      likeType: null == likeType
          ? _value.likeType
          : likeType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikeModelCopyWith<$Res> implements $LikeModelCopyWith<$Res> {
  factory _$$_LikeModelCopyWith(
          _$_LikeModel value, $Res Function(_$_LikeModel) then) =
      __$$_LikeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int likeeId, String likeType});
}

/// @nodoc
class __$$_LikeModelCopyWithImpl<$Res>
    extends _$LikeModelCopyWithImpl<$Res, _$_LikeModel>
    implements _$$_LikeModelCopyWith<$Res> {
  __$$_LikeModelCopyWithImpl(
      _$_LikeModel _value, $Res Function(_$_LikeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? likeeId = null,
    Object? likeType = null,
  }) {
    return _then(_$_LikeModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      likeeId: null == likeeId
          ? _value.likeeId
          : likeeId // ignore: cast_nullable_to_non_nullable
              as int,
      likeType: null == likeType
          ? _value.likeType
          : likeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikeModel implements _LikeModel {
  const _$_LikeModel(
      {required this.userId, required this.likeeId, required this.likeType});

  factory _$_LikeModel.fromJson(Map<String, dynamic> json) =>
      _$$_LikeModelFromJson(json);

  @override
  final int userId;
  @override
  final int likeeId;
  @override
  final String likeType;

  @override
  String toString() {
    return 'LikeModel(userId: $userId, likeeId: $likeeId, likeType: $likeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.likeeId, likeeId) || other.likeeId == likeeId) &&
            (identical(other.likeType, likeType) ||
                other.likeType == likeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, likeeId, likeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeModelCopyWith<_$_LikeModel> get copyWith =>
      __$$_LikeModelCopyWithImpl<_$_LikeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeModelToJson(
      this,
    );
  }
}

abstract class _LikeModel implements LikeModel {
  const factory _LikeModel(
      {required final int userId,
      required final int likeeId,
      required final String likeType}) = _$_LikeModel;

  factory _LikeModel.fromJson(Map<String, dynamic> json) =
      _$_LikeModel.fromJson;

  @override
  int get userId;
  @override
  int get likeeId;
  @override
  String get likeType;
  @override
  @JsonKey(ignore: true)
  _$$_LikeModelCopyWith<_$_LikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
