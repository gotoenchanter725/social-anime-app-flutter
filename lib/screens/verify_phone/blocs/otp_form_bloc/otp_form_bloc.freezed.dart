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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OtpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otpCode)? codeChanged,
    TResult? Function()? submit,
    TResult? Function()? resend,
    TResult? Function()? activateResend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otpCode)? codeChanged,
    TResult Function()? submit,
    TResult Function()? resend,
    TResult Function()? activateResend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Resend value) resend,
    required TResult Function(_ActivateResend value) activateResend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Resend value)? resend,
    TResult? Function(_ActivateResend value)? activateResend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Resend value)? resend,
    TResult Function(_ActivateResend value)? activateResend,
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
abstract class _$$_CodeChangedCopyWith<$Res> {
  factory _$$_CodeChangedCopyWith(
          _$_CodeChanged value, $Res Function(_$_CodeChanged) then) =
      __$$_CodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$_CodeChangedCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$_CodeChanged>
    implements _$$_CodeChangedCopyWith<$Res> {
  __$$_CodeChangedCopyWithImpl(
      _$_CodeChanged _value, $Res Function(_$_CodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$_CodeChanged(
      null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CodeChanged implements _CodeChanged {
  const _$_CodeChanged(this.otpCode);

  @override
  final String otpCode;

  @override
  String toString() {
    return 'OtpFormEvent.codeChanged(otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CodeChanged &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CodeChangedCopyWith<_$_CodeChanged> get copyWith =>
      __$$_CodeChangedCopyWithImpl<_$_CodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otpCode) codeChanged,
    required TResult Function() submit,
    required TResult Function() resend,
    required TResult Function() activateResend,
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
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class _CodeChanged implements OtpFormEvent {
  const factory _CodeChanged(final String otpCode) = _$_CodeChanged;

  String get otpCode;
  @JsonKey(ignore: true)
  _$$_CodeChangedCopyWith<_$_CodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$_Submit>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'OtpFormEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
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
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements OtpFormEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
abstract class _$$_ResendCopyWith<$Res> {
  factory _$$_ResendCopyWith(_$_Resend value, $Res Function(_$_Resend) then) =
      __$$_ResendCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResendCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$_Resend>
    implements _$$_ResendCopyWith<$Res> {
  __$$_ResendCopyWithImpl(_$_Resend _value, $Res Function(_$_Resend) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Resend implements _Resend {
  const _$_Resend();

  @override
  String toString() {
    return 'OtpFormEvent.resend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Resend);
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
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements OtpFormEvent {
  const factory _Resend() = _$_Resend;
}

/// @nodoc
abstract class _$$_ActivateResendCopyWith<$Res> {
  factory _$$_ActivateResendCopyWith(
          _$_ActivateResend value, $Res Function(_$_ActivateResend) then) =
      __$$_ActivateResendCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActivateResendCopyWithImpl<$Res>
    extends _$OtpFormEventCopyWithImpl<$Res, _$_ActivateResend>
    implements _$$_ActivateResendCopyWith<$Res> {
  __$$_ActivateResendCopyWithImpl(
      _$_ActivateResend _value, $Res Function(_$_ActivateResend) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActivateResend implements _ActivateResend {
  const _$_ActivateResend();

  @override
  String toString() {
    return 'OtpFormEvent.activateResend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActivateResend);
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
    required TResult orElse(),
  }) {
    if (activateResend != null) {
      return activateResend(this);
    }
    return orElse();
  }
}

abstract class _ActivateResend implements OtpFormEvent {
  const factory _ActivateResend() = _$_ActivateResend;
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
abstract class _$$_OtpFormStateCopyWith<$Res>
    implements $OtpFormStateCopyWith<$Res> {
  factory _$$_OtpFormStateCopyWith(
          _$_OtpFormState value, $Res Function(_$_OtpFormState) then) =
      __$$_OtpFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String otpCode,
      bool isSubmitting,
      bool isResendButtonActive,
      bool isError});
}

/// @nodoc
class __$$_OtpFormStateCopyWithImpl<$Res>
    extends _$OtpFormStateCopyWithImpl<$Res, _$_OtpFormState>
    implements _$$_OtpFormStateCopyWith<$Res> {
  __$$_OtpFormStateCopyWithImpl(
      _$_OtpFormState _value, $Res Function(_$_OtpFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
    Object? isSubmitting = null,
    Object? isResendButtonActive = null,
    Object? isError = null,
  }) {
    return _then(_$_OtpFormState(
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

class _$_OtpFormState implements _OtpFormState {
  const _$_OtpFormState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpFormState &&
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
  _$$_OtpFormStateCopyWith<_$_OtpFormState> get copyWith =>
      __$$_OtpFormStateCopyWithImpl<_$_OtpFormState>(this, _$identity);
}

abstract class _OtpFormState implements OtpFormState {
  const factory _OtpFormState(
      {required final String otpCode,
      required final bool isSubmitting,
      required final bool isResendButtonActive,
      required final bool isError}) = _$_OtpFormState;

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
  _$$_OtpFormStateCopyWith<_$_OtpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
