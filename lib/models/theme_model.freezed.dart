// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeModel {
  ThemeMode get mode => throw _privateConstructorUsedError;
  ThemeData get light => throw _privateConstructorUsedError;
  ThemeData get dark => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeModelCopyWith<ThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModelCopyWith<$Res> {
  factory $ThemeModelCopyWith(
          ThemeModel value, $Res Function(ThemeModel) then) =
      _$ThemeModelCopyWithImpl<$Res, ThemeModel>;
  @useResult
  $Res call({ThemeMode mode, ThemeData light, ThemeData dark});
}

/// @nodoc
class _$ThemeModelCopyWithImpl<$Res, $Val extends ThemeModel>
    implements $ThemeModelCopyWith<$Res> {
  _$ThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ThemeModelCopyWith<$Res>
    implements $ThemeModelCopyWith<$Res> {
  factory _$$_ThemeModelCopyWith(
          _$_ThemeModel value, $Res Function(_$_ThemeModel) then) =
      __$$_ThemeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode mode, ThemeData light, ThemeData dark});
}

/// @nodoc
class __$$_ThemeModelCopyWithImpl<$Res>
    extends _$ThemeModelCopyWithImpl<$Res, _$_ThemeModel>
    implements _$$_ThemeModelCopyWith<$Res> {
  __$$_ThemeModelCopyWithImpl(
      _$_ThemeModel _value, $Res Function(_$_ThemeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? light = null,
    Object? dark = null,
  }) {
    return _then(_$_ThemeModel(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      light: null == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      dark: null == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_ThemeModel extends _ThemeModel {
  _$_ThemeModel({required this.mode, required this.light, required this.dark})
      : super._();

  @override
  final ThemeMode mode;
  @override
  final ThemeData light;
  @override
  final ThemeData dark;

  @override
  String toString() {
    return 'ThemeModel(mode: $mode, light: $light, dark: $dark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeModel &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, light, dark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeModelCopyWith<_$_ThemeModel> get copyWith =>
      __$$_ThemeModelCopyWithImpl<_$_ThemeModel>(this, _$identity);
}

abstract class _ThemeModel extends ThemeModel {
  factory _ThemeModel(
      {required final ThemeMode mode,
      required final ThemeData light,
      required final ThemeData dark}) = _$_ThemeModel;
  _ThemeModel._() : super._();

  @override
  ThemeMode get mode;
  @override
  ThemeData get light;
  @override
  ThemeData get dark;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeModelCopyWith<_$_ThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
