// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikeUserModel _$LikeUserModelFromJson(Map<String, dynamic> json) {
  return _LikeUserModel.fromJson(json);
}

/// @nodoc
mixin _$LikeUserModel {
  LikeModel get like => throw _privateConstructorUsedError;
  MatchesUsersModel? get match => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeUserModelCopyWith<LikeUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeUserModelCopyWith<$Res> {
  factory $LikeUserModelCopyWith(
          LikeUserModel value, $Res Function(LikeUserModel) then) =
      _$LikeUserModelCopyWithImpl<$Res, LikeUserModel>;
  @useResult
  $Res call({LikeModel like, MatchesUsersModel? match});

  $LikeModelCopyWith<$Res> get like;
  $MatchesUsersModelCopyWith<$Res>? get match;
}

/// @nodoc
class _$LikeUserModelCopyWithImpl<$Res, $Val extends LikeUserModel>
    implements $LikeUserModelCopyWith<$Res> {
  _$LikeUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? match = freezed,
  }) {
    return _then(_value.copyWith(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as LikeModel,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchesUsersModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeModelCopyWith<$Res> get like {
    return $LikeModelCopyWith<$Res>(_value.like, (value) {
      return _then(_value.copyWith(like: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchesUsersModelCopyWith<$Res>? get match {
    if (_value.match == null) {
      return null;
    }

    return $MatchesUsersModelCopyWith<$Res>(_value.match!, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LikeUserModelCopyWith<$Res>
    implements $LikeUserModelCopyWith<$Res> {
  factory _$$_LikeUserModelCopyWith(
          _$_LikeUserModel value, $Res Function(_$_LikeUserModel) then) =
      __$$_LikeUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikeModel like, MatchesUsersModel? match});

  @override
  $LikeModelCopyWith<$Res> get like;
  @override
  $MatchesUsersModelCopyWith<$Res>? get match;
}

/// @nodoc
class __$$_LikeUserModelCopyWithImpl<$Res>
    extends _$LikeUserModelCopyWithImpl<$Res, _$_LikeUserModel>
    implements _$$_LikeUserModelCopyWith<$Res> {
  __$$_LikeUserModelCopyWithImpl(
      _$_LikeUserModel _value, $Res Function(_$_LikeUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? like = null,
    Object? match = freezed,
  }) {
    return _then(_$_LikeUserModel(
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as LikeModel,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchesUsersModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikeUserModel implements _LikeUserModel {
  const _$_LikeUserModel({required this.like, this.match});

  factory _$_LikeUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_LikeUserModelFromJson(json);

  @override
  final LikeModel like;
  @override
  final MatchesUsersModel? match;

  @override
  String toString() {
    return 'LikeUserModel(like: $like, match: $match)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeUserModel &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.match, match) || other.match == match));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, like, match);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeUserModelCopyWith<_$_LikeUserModel> get copyWith =>
      __$$_LikeUserModelCopyWithImpl<_$_LikeUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeUserModelToJson(
      this,
    );
  }
}

abstract class _LikeUserModel implements LikeUserModel {
  const factory _LikeUserModel(
      {required final LikeModel like,
      final MatchesUsersModel? match}) = _$_LikeUserModel;

  factory _LikeUserModel.fromJson(Map<String, dynamic> json) =
      _$_LikeUserModel.fromJson;

  @override
  LikeModel get like;
  @override
  MatchesUsersModel? get match;
  @override
  @JsonKey(ignore: true)
  _$$_LikeUserModelCopyWith<_$_LikeUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
