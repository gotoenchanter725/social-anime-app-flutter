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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ApplicationLocaleStateImplCopyWith<$Res>
    implements $ApplicationLocaleStateCopyWith<$Res> {
  factory _$$ApplicationLocaleStateImplCopyWith(
          _$ApplicationLocaleStateImpl value,
          $Res Function(_$ApplicationLocaleStateImpl) then) =
      __$$ApplicationLocaleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale? locale});
}

/// @nodoc
class __$$ApplicationLocaleStateImplCopyWithImpl<$Res>
    extends _$ApplicationLocaleStateCopyWithImpl<$Res,
        _$ApplicationLocaleStateImpl>
    implements _$$ApplicationLocaleStateImplCopyWith<$Res> {
  __$$ApplicationLocaleStateImplCopyWithImpl(
      _$ApplicationLocaleStateImpl _value,
      $Res Function(_$ApplicationLocaleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$ApplicationLocaleStateImpl(
      freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$ApplicationLocaleStateImpl implements _ApplicationLocaleState {
  const _$ApplicationLocaleStateImpl(this.locale);

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'ApplicationLocaleState(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationLocaleStateImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationLocaleStateImplCopyWith<_$ApplicationLocaleStateImpl>
      get copyWith => __$$ApplicationLocaleStateImplCopyWithImpl<
          _$ApplicationLocaleStateImpl>(this, _$identity);
}

abstract class _ApplicationLocaleState implements ApplicationLocaleState {
  const factory _ApplicationLocaleState(final Locale? locale) =
      _$ApplicationLocaleStateImpl;

  @override
  Locale? get locale;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationLocaleStateImplCopyWith<_$ApplicationLocaleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
