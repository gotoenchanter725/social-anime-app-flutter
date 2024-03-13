// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_typography.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppTypography {
  AppTextTheme get black => throw _privateConstructorUsedError;
  AppTextTheme get white => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppTypographyCopyWith<AppTypography> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTypographyCopyWith<$Res> {
  factory $AppTypographyCopyWith(
          AppTypography value, $Res Function(AppTypography) then) =
      _$AppTypographyCopyWithImpl<$Res, AppTypography>;
  @useResult
  $Res call({AppTextTheme black, AppTextTheme white});

  $AppTextThemeCopyWith<$Res> get black;
  $AppTextThemeCopyWith<$Res> get white;
}

/// @nodoc
class _$AppTypographyCopyWithImpl<$Res, $Val extends AppTypography>
    implements $AppTypographyCopyWith<$Res> {
  _$AppTypographyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? black = null,
    Object? white = null,
  }) {
    return _then(_value.copyWith(
      black: null == black
          ? _value.black
          : black // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
      white: null == white
          ? _value.white
          : white // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppTextThemeCopyWith<$Res> get black {
    return $AppTextThemeCopyWith<$Res>(_value.black, (value) {
      return _then(_value.copyWith(black: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppTextThemeCopyWith<$Res> get white {
    return $AppTextThemeCopyWith<$Res>(_value.white, (value) {
      return _then(_value.copyWith(white: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppTypographyImplCopyWith<$Res>
    implements $AppTypographyCopyWith<$Res> {
  factory _$$AppTypographyImplCopyWith(
          _$AppTypographyImpl value, $Res Function(_$AppTypographyImpl) then) =
      __$$AppTypographyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppTextTheme black, AppTextTheme white});

  @override
  $AppTextThemeCopyWith<$Res> get black;
  @override
  $AppTextThemeCopyWith<$Res> get white;
}

/// @nodoc
class __$$AppTypographyImplCopyWithImpl<$Res>
    extends _$AppTypographyCopyWithImpl<$Res, _$AppTypographyImpl>
    implements _$$AppTypographyImplCopyWith<$Res> {
  __$$AppTypographyImplCopyWithImpl(
      _$AppTypographyImpl _value, $Res Function(_$AppTypographyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? black = null,
    Object? white = null,
  }) {
    return _then(_$AppTypographyImpl(
      black: null == black
          ? _value.black
          : black // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
      white: null == white
          ? _value.white
          : white // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
    ));
  }
}

/// @nodoc

class _$AppTypographyImpl extends _AppTypography {
  _$AppTypographyImpl({required this.black, required this.white}) : super._();

  @override
  final AppTextTheme black;
  @override
  final AppTextTheme white;

  @override
  String toString() {
    return 'AppTypography(black: $black, white: $white)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppTypographyImpl &&
            (identical(other.black, black) || other.black == black) &&
            (identical(other.white, white) || other.white == white));
  }

  @override
  int get hashCode => Object.hash(runtimeType, black, white);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppTypographyImplCopyWith<_$AppTypographyImpl> get copyWith =>
      __$$AppTypographyImplCopyWithImpl<_$AppTypographyImpl>(this, _$identity);
}

abstract class _AppTypography extends AppTypography {
  factory _AppTypography(
      {required final AppTextTheme black,
      required final AppTextTheme white}) = _$AppTypographyImpl;
  _AppTypography._() : super._();

  @override
  AppTextTheme get black;
  @override
  AppTextTheme get white;
  @override
  @JsonKey(ignore: true)
  _$$AppTypographyImplCopyWith<_$AppTypographyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
