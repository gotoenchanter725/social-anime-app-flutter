// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() invalidCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? invalidCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? invalidCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(InvalidCode value) invalidCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(InvalidCode value)? invalidCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(InvalidCode value)? invalidCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

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
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerError>
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
    return 'AuthFailure.serverError()';
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
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() invalidCode,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? invalidCode,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? invalidCode,
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
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(InvalidCode value) invalidCode,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(InvalidCode value)? invalidCode,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(InvalidCode value)? invalidCode,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$PhoneNumberAlreadyInUseCopyWith<$Res> {
  factory _$$PhoneNumberAlreadyInUseCopyWith(_$PhoneNumberAlreadyInUse value,
          $Res Function(_$PhoneNumberAlreadyInUse) then) =
      __$$PhoneNumberAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneNumberAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$PhoneNumberAlreadyInUse>
    implements _$$PhoneNumberAlreadyInUseCopyWith<$Res> {
  __$$PhoneNumberAlreadyInUseCopyWithImpl(_$PhoneNumberAlreadyInUse _value,
      $Res Function(_$PhoneNumberAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhoneNumberAlreadyInUse implements PhoneNumberAlreadyInUse {
  const _$PhoneNumberAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.phoneNumberAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() invalidCode,
  }) {
    return phoneNumberAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? invalidCode,
  }) {
    return phoneNumberAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? invalidCode,
    required TResult orElse(),
  }) {
    if (phoneNumberAlreadyInUse != null) {
      return phoneNumberAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(InvalidCode value) invalidCode,
  }) {
    return phoneNumberAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(InvalidCode value)? invalidCode,
  }) {
    return phoneNumberAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(InvalidCode value)? invalidCode,
    required TResult orElse(),
  }) {
    if (phoneNumberAlreadyInUse != null) {
      return phoneNumberAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberAlreadyInUse implements AuthFailure {
  const factory PhoneNumberAlreadyInUse() = _$PhoneNumberAlreadyInUse;
}

/// @nodoc
abstract class _$$InvalidCodeCopyWith<$Res> {
  factory _$$InvalidCodeCopyWith(
          _$InvalidCode value, $Res Function(_$InvalidCode) then) =
      __$$InvalidCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidCode>
    implements _$$InvalidCodeCopyWith<$Res> {
  __$$InvalidCodeCopyWithImpl(
      _$InvalidCode _value, $Res Function(_$InvalidCode) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidCode implements InvalidCode {
  const _$InvalidCode();

  @override
  String toString() {
    return 'AuthFailure.invalidCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() phoneNumberAlreadyInUse,
    required TResult Function() invalidCode,
  }) {
    return invalidCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? phoneNumberAlreadyInUse,
    TResult? Function()? invalidCode,
  }) {
    return invalidCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? phoneNumberAlreadyInUse,
    TResult Function()? invalidCode,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(PhoneNumberAlreadyInUse value)
        phoneNumberAlreadyInUse,
    required TResult Function(InvalidCode value) invalidCode,
  }) {
    return invalidCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult? Function(InvalidCode value)? invalidCode,
  }) {
    return invalidCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(PhoneNumberAlreadyInUse value)? phoneNumberAlreadyInUse,
    TResult Function(InvalidCode value)? invalidCode,
    required TResult orElse(),
  }) {
    if (invalidCode != null) {
      return invalidCode(this);
    }
    return orElse();
  }
}

abstract class InvalidCode implements AuthFailure {
  const factory InvalidCode() = _$InvalidCode;
}
