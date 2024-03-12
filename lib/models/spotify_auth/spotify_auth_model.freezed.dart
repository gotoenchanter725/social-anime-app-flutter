// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyAuthModel _$SpotifyAuthModelFromJson(Map<String, dynamic> json) {
  return _SpotifyAuthModel.fromJson(json);
}

/// @nodoc
mixin _$SpotifyAuthModel {
  String get token => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyAuthModelCopyWith<SpotifyAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyAuthModelCopyWith<$Res> {
  factory $SpotifyAuthModelCopyWith(
          SpotifyAuthModel value, $Res Function(SpotifyAuthModel) then) =
      _$SpotifyAuthModelCopyWithImpl<$Res, SpotifyAuthModel>;
  @useResult
  $Res call({String token, String refreshToken});
}

/// @nodoc
class _$SpotifyAuthModelCopyWithImpl<$Res, $Val extends SpotifyAuthModel>
    implements $SpotifyAuthModelCopyWith<$Res> {
  _$SpotifyAuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyAuthModelImplCopyWith<$Res>
    implements $SpotifyAuthModelCopyWith<$Res> {
  factory _$$SpotifyAuthModelImplCopyWith(_$SpotifyAuthModelImpl value,
          $Res Function(_$SpotifyAuthModelImpl) then) =
      __$$SpotifyAuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String refreshToken});
}

/// @nodoc
class __$$SpotifyAuthModelImplCopyWithImpl<$Res>
    extends _$SpotifyAuthModelCopyWithImpl<$Res, _$SpotifyAuthModelImpl>
    implements _$$SpotifyAuthModelImplCopyWith<$Res> {
  __$$SpotifyAuthModelImplCopyWithImpl(_$SpotifyAuthModelImpl _value,
      $Res Function(_$SpotifyAuthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
  }) {
    return _then(_$SpotifyAuthModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyAuthModelImpl implements _SpotifyAuthModel {
  const _$SpotifyAuthModelImpl(
      {required this.token, required this.refreshToken});

  factory _$SpotifyAuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyAuthModelImplFromJson(json);

  @override
  final String token;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'SpotifyAuthModel(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyAuthModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyAuthModelImplCopyWith<_$SpotifyAuthModelImpl> get copyWith =>
      __$$SpotifyAuthModelImplCopyWithImpl<_$SpotifyAuthModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyAuthModelImplToJson(
      this,
    );
  }
}

abstract class _SpotifyAuthModel implements SpotifyAuthModel {
  const factory _SpotifyAuthModel(
      {required final String token,
      required final String refreshToken}) = _$SpotifyAuthModelImpl;

  factory _SpotifyAuthModel.fromJson(Map<String, dynamic> json) =
      _$SpotifyAuthModelImpl.fromJson;

  @override
  String get token;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyAuthModelImplCopyWith<_$SpotifyAuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
