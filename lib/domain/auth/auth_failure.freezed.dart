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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
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
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$PhoneNumberAlreadyInUseImplCopyWith<$Res> {
  factory _$$PhoneNumberAlreadyInUseImplCopyWith(
          _$PhoneNumberAlreadyInUseImpl value,
          $Res Function(_$PhoneNumberAlreadyInUseImpl) then) =
      __$$PhoneNumberAlreadyInUseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhoneNumberAlreadyInUseImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$PhoneNumberAlreadyInUseImpl>
    implements _$$PhoneNumberAlreadyInUseImplCopyWith<$Res> {
  __$$PhoneNumberAlreadyInUseImplCopyWithImpl(
      _$PhoneNumberAlreadyInUseImpl _value,
      $Res Function(_$PhoneNumberAlreadyInUseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhoneNumberAlreadyInUseImpl implements PhoneNumberAlreadyInUse {
  const _$PhoneNumberAlreadyInUseImpl();

  @override
  String toString() {
    return 'AuthFailure.phoneNumberAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberAlreadyInUseImpl);
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
  const factory PhoneNumberAlreadyInUse() = _$PhoneNumberAlreadyInUseImpl;
}

/// @nodoc
abstract class _$$InvalidCodeImplCopyWith<$Res> {
  factory _$$InvalidCodeImplCopyWith(
          _$InvalidCodeImpl value, $Res Function(_$InvalidCodeImpl) then) =
      __$$InvalidCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCodeImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidCodeImpl>
    implements _$$InvalidCodeImplCopyWith<$Res> {
  __$$InvalidCodeImplCopyWithImpl(
      _$InvalidCodeImpl _value, $Res Function(_$InvalidCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidCodeImpl implements InvalidCode {
  const _$InvalidCodeImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidCodeImpl);
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
  const factory InvalidCode() = _$InvalidCodeImpl;
}
