// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SpotifyFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() spotifyAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? spotifyAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? spotifyAuthError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(SpotifyAuthError value) spotifyAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(SpotifyAuthError value)? spotifyAuthError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(SpotifyAuthError value)? spotifyAuthError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyFailureCopyWith<$Res> {
  factory $SpotifyFailureCopyWith(
          SpotifyFailure value, $Res Function(SpotifyFailure) then) =
      _$SpotifyFailureCopyWithImpl<$Res, SpotifyFailure>;
}

/// @nodoc
class _$SpotifyFailureCopyWithImpl<$Res, $Val extends SpotifyFailure>
    implements $SpotifyFailureCopyWith<$Res> {
  _$SpotifyFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$SpotifyFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'SpotifyFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() spotifyAuthError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? spotifyAuthError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? spotifyAuthError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(SpotifyAuthError value) spotifyAuthError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(SpotifyAuthError value)? spotifyAuthError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(SpotifyAuthError value)? spotifyAuthError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements SpotifyFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$SpotifyAuthErrorCopyWith<$Res> {
  factory _$$SpotifyAuthErrorCopyWith(
          _$SpotifyAuthError value, $Res Function(_$SpotifyAuthError) then) =
      __$$SpotifyAuthErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpotifyAuthErrorCopyWithImpl<$Res>
    extends _$SpotifyFailureCopyWithImpl<$Res, _$SpotifyAuthError>
    implements _$$SpotifyAuthErrorCopyWith<$Res> {
  __$$SpotifyAuthErrorCopyWithImpl(
      _$SpotifyAuthError _value, $Res Function(_$SpotifyAuthError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpotifyAuthError implements SpotifyAuthError {
  const _$SpotifyAuthError();

  @override
  String toString() {
    return 'SpotifyFailure.spotifyAuthError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpotifyAuthError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() spotifyAuthError,
  }) {
    return spotifyAuthError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? spotifyAuthError,
  }) {
    return spotifyAuthError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? spotifyAuthError,
    required TResult orElse(),
  }) {
    if (spotifyAuthError != null) {
      return spotifyAuthError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(SpotifyAuthError value) spotifyAuthError,
  }) {
    return spotifyAuthError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(SpotifyAuthError value)? spotifyAuthError,
  }) {
    return spotifyAuthError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(SpotifyAuthError value)? spotifyAuthError,
    required TResult orElse(),
  }) {
    if (spotifyAuthError != null) {
      return spotifyAuthError(this);
    }
    return orElse();
  }
}

abstract class SpotifyAuthError implements SpotifyFailure {
  const factory SpotifyAuthError() = _$SpotifyAuthError;
}
