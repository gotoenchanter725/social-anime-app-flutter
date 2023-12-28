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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_SpotifyAuthModelCopyWith<$Res>
    implements $SpotifyAuthModelCopyWith<$Res> {
  factory _$$_SpotifyAuthModelCopyWith(
          _$_SpotifyAuthModel value, $Res Function(_$_SpotifyAuthModel) then) =
      __$$_SpotifyAuthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String refreshToken});
}

/// @nodoc
class __$$_SpotifyAuthModelCopyWithImpl<$Res>
    extends _$SpotifyAuthModelCopyWithImpl<$Res, _$_SpotifyAuthModel>
    implements _$$_SpotifyAuthModelCopyWith<$Res> {
  __$$_SpotifyAuthModelCopyWithImpl(
      _$_SpotifyAuthModel _value, $Res Function(_$_SpotifyAuthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_SpotifyAuthModel(
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
class _$_SpotifyAuthModel implements _SpotifyAuthModel {
  const _$_SpotifyAuthModel({required this.token, required this.refreshToken});

  factory _$_SpotifyAuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_SpotifyAuthModelFromJson(json);

  @override
  final String token;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'SpotifyAuthModel(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpotifyAuthModel &&
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
  _$$_SpotifyAuthModelCopyWith<_$_SpotifyAuthModel> get copyWith =>
      __$$_SpotifyAuthModelCopyWithImpl<_$_SpotifyAuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpotifyAuthModelToJson(
      this,
    );
  }
}

abstract class _SpotifyAuthModel implements SpotifyAuthModel {
  const factory _SpotifyAuthModel(
      {required final String token,
      required final String refreshToken}) = _$_SpotifyAuthModel;

  factory _SpotifyAuthModel.fromJson(Map<String, dynamic> json) =
      _$_SpotifyAuthModel.fromJson;

  @override
  String get token;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_SpotifyAuthModelCopyWith<_$_SpotifyAuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
