// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationLocaleState {
  Locale? get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationLocaleStateCopyWith<ApplicationLocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationLocaleStateCopyWith<$Res> {
  factory $ApplicationLocaleStateCopyWith(ApplicationLocaleState value,
          $Res Function(ApplicationLocaleState) then) =
      _$ApplicationLocaleStateCopyWithImpl<$Res, ApplicationLocaleState>;
  @useResult
  $Res call({Locale? locale});
}

/// @nodoc
class _$ApplicationLocaleStateCopyWithImpl<$Res,
        $Val extends ApplicationLocaleState>
    implements $ApplicationLocaleStateCopyWith<$Res> {
  _$ApplicationLocaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationLocaleStateCopyWith<$Res>
    implements $ApplicationLocaleStateCopyWith<$Res> {
  factory _$$_ApplicationLocaleStateCopyWith(_$_ApplicationLocaleState value,
          $Res Function(_$_ApplicationLocaleState) then) =
      __$$_ApplicationLocaleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale? locale});
}

/// @nodoc
class __$$_ApplicationLocaleStateCopyWithImpl<$Res>
    extends _$ApplicationLocaleStateCopyWithImpl<$Res,
        _$_ApplicationLocaleState>
    implements _$$_ApplicationLocaleStateCopyWith<$Res> {
  __$$_ApplicationLocaleStateCopyWithImpl(_$_ApplicationLocaleState _value,
      $Res Function(_$_ApplicationLocaleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$_ApplicationLocaleState(
      freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$_ApplicationLocaleState implements _ApplicationLocaleState {
  const _$_ApplicationLocaleState(this.locale);

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'ApplicationLocaleState(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationLocaleState &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationLocaleStateCopyWith<_$_ApplicationLocaleState> get copyWith =>
      __$$_ApplicationLocaleStateCopyWithImpl<_$_ApplicationLocaleState>(
          this, _$identity);
}

abstract class _ApplicationLocaleState implements ApplicationLocaleState {
  const factory _ApplicationLocaleState(final Locale? locale) =
      _$_ApplicationLocaleState;

  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationLocaleStateCopyWith<_$_ApplicationLocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}
