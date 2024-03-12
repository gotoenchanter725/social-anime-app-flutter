// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpFormEventCopyWith<$Res> {
  factory $OtpFormEventCopyWith(
          OtpFormEvent value, $Res Function(OtpFormEvent) then) =
      _$OtpFormEventCopyWithImpl<$Res, OtpFormEvent>;
}

/// @nodoc
class _$OtpFormEventCopyWithImpl<$Res, $Val extends OtpFormEvent>
    implements $OtpFormEventCopyWith<$Res> {
  _$OtpFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CodeChangedImplCopyWith<$Res> {
  factory _$$CodeChangedImplCopyWith(
          _$CodeChangedImpl value, $Res Function(_$CodeChangedImpl) then) =
      __$$CodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$CodeChangedImplCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$CodeChangedImpl>
    implements _$$CodeChangedImplCopyWith<$Res> {
  __$$CodeChangedImplCopyWithImpl(
      _$CodeChangedImpl _value, $Res Function(_$CodeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$CodeChangedImpl(
      null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeChangedImpl implements _CodeChanged {
  const _$CodeChangedImpl(this.otpCode);

  @override
  final String otpCode;

  @override
  String toString() {
    return 'OtpFormEvent.codeChanged(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeChangedImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeChangedImplCopyWith<_$CodeChangedImpl> get copyWith =>
      __$$CodeChangedImplCopyWithImpl<_$CodeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
    required TResult Function() failed,
  }) {
    return codeChanged(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
    TResult? Function()? failed,
  }) {
    return codeChanged?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
    required TResult Function(_Failed value) failed,
  }) {
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
    TResult? Function(_Failed value)? failed,
  }) {
    return codeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class _CodeChanged implements OtpFormEvent {
  const factory _CodeChanged(final String otpCode) = _$CodeChangedImpl;

  String get otpCode;
  @JsonKey(ignore: true)
  _$$CodeChangedImplCopyWith<_$CodeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'OtpFormEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
    required TResult Function() failed,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
    TResult? Function()? failed,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
    required TResult Function(_Failed value) failed,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
    TResult? Function(_Failed value)? failed,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements OtpFormEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$ResendImplCopyWith<$Res> {
  factory _$$ResendImplCopyWith(
          _$ResendImpl value, $Res Function(_$ResendImpl) then) =
      __$$ResendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendImplCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$ResendImpl>
    implements _$$ResendImplCopyWith<$Res> {
  __$$ResendImplCopyWithImpl(
      _$ResendImpl _value, $Res Function(_$ResendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendImpl implements _Resend {
  const _$ResendImpl();

  @override
  String toString() {
    return 'OtpFormEvent.resend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
    required TResult Function() failed,
  }) {
    return resend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
    TResult? Function()? failed,
  }) {
    return resend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
    required TResult Function(_Failed value) failed,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
    TResult? Function(_Failed value)? failed,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements OtpFormEvent {
  const factory _Resend() = _$ResendImpl;
}

/// @nodoc
abstract class _$$ActivateResendImplCopyWith<$Res> {
  factory _$$ActivateResendImplCopyWith(_$ActivateResendImpl value,
          $Res Function(_$ActivateResendImpl) then) =
      __$$ActivateResendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActivateResendImplCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$ActivateResendImpl>
    implements _$$ActivateResendImplCopyWith<$Res> {
  __$$ActivateResendImplCopyWithImpl(
      _$ActivateResendImpl _value, $Res Function(_$ActivateResendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActivateResendImpl implements _ActivateResend {
  const _$ActivateResendImpl();

  @override
  String toString() {
    return 'OtpFormEvent.activateResend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActivateResendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
    required TResult Function() failed,
  }) {
    return activateResend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
    TResult? Function()? failed,
  }) {
    return activateResend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (activateResend != null) {
      return activateResend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
    required TResult Function(_Failed value) failed,
  }) {
    return activateResend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
    TResult? Function(_Failed value)? failed,
  }) {
    return activateResend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (activateResend != null) {
      return activateResend(this);
    }
    return orElse();
  }
}

abstract class _ActivateResend implements OtpFormEvent {
  const factory _ActivateResend() = _$ActivateResendImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'OtpFormEvent.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements OtpFormEvent {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
mixin _$OtpFormState {
  String get otpCode => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isResendButtonActive => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpFormStateCopyWith<OtpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpFormStateCopyWith<$Res> {
  factory $OtpFormStateCopyWith(
          OtpFormState value, $Res Function(OtpFormState) then) =
      _$OtpFormStateCopyWithImpl<$Res, OtpFormState>;
  @useResult
  $Res call(
      {String otpCode,
      bool isSubmitting,
      bool isResendButtonActive,
      bool isError});
}

/// @nodoc
class _$OtpFormStateCopyWithImpl<$Res, $Val extends OtpFormState>
    implements $OtpFormStateCopyWith<$Res> {
  _$OtpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
    Object? isSubmitting = null,
    Object? isResendButtonActive = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendButtonActive: null == isResendButtonActive
          ? _value.isResendButtonActive
          : isResendButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpFormStateImplCopyWith<$Res>
    implements $OtpFormStateCopyWith<$Res> {
  factory _$$OtpFormStateImplCopyWith(
          _$OtpFormStateImpl value, $Res Function(_$OtpFormStateImpl) then) =
      __$$OtpFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String otpCode,
      bool isSubmitting,
      bool isResendButtonActive,
      bool isError});
}

/// @nodoc
class __$$OtpFormStateImplCopyWithImpl<$Res>
    extends _$OtpFormStateCopyWithImpl<$Res, _$OtpFormStateImpl>
    implements _$$OtpFormStateImplCopyWith<$Res> {
  __$$OtpFormStateImplCopyWithImpl(
      _$OtpFormStateImpl _value, $Res Function(_$OtpFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
    Object? isSubmitting = null,
    Object? isResendButtonActive = null,
    Object? isError = null,
  }) {
    return _then(_$OtpFormStateImpl(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendButtonActive: null == isResendButtonActive
          ? _value.isResendButtonActive
          : isResendButtonActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OtpFormStateImpl implements _OtpFormState {
  const _$OtpFormStateImpl(
      {required this.otpCode,
      required this.isSubmitting,
      required this.isResendButtonActive,
      required this.isError});

  @override
  final String otpCode;
  @override
  final bool isSubmitting;
  @override
  final bool isResendButtonActive;
  @override
  final bool isError;

  @override
  String toString() {
    return 'OtpFormState(otpCode: $otpCode, isSubmitting: $isSubmitting, isResendButtonActive: $isResendButtonActive, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpFormStateImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isResendButtonActive, isResendButtonActive) ||
                other.isResendButtonActive == isResendButtonActive) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, otpCode, isSubmitting, isResendButtonActive, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpFormStateImplCopyWith<_$OtpFormStateImpl> get copyWith =>
      __$$OtpFormStateImplCopyWithImpl<_$OtpFormStateImpl>(this, _$identity);
}

abstract class _OtpFormState implements OtpFormState {
  const factory _OtpFormState(
      {required final String otpCode,
      required final bool isSubmitting,
      required final bool isResendButtonActive,
      required final bool isError}) = _$OtpFormStateImpl;

  @override
  String get otpCode;
  @override
  bool get isSubmitting;
  @override
  bool get isResendButtonActive;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$OtpFormStateImplCopyWith<_$OtpFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
