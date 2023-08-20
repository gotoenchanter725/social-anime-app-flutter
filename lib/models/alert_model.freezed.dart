// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlertModel {
  String get message => throw _privateConstructorUsedError;
  AlertType get type => throw _privateConstructorUsedError;
  bool get translatable => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlertModelCopyWith<AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertModelCopyWith<$Res> {
  factory $AlertModelCopyWith(
          AlertModel value, $Res Function(AlertModel) then) =
      _$AlertModelCopyWithImpl<$Res, AlertModel>;
  @useResult
  $Res call({String message, AlertType type, bool translatable, int? code});
}

/// @nodoc
class _$AlertModelCopyWithImpl<$Res, $Val extends AlertModel>
    implements $AlertModelCopyWith<$Res> {
  _$AlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
    Object? translatable = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlertType,
      translatable: null == translatable
          ? _value.translatable
          : translatable // ignore: cast_nullable_to_non_nullable
              as bool,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlertModelCopyWith<$Res>
    implements $AlertModelCopyWith<$Res> {
  factory _$$_AlertModelCopyWith(
          _$_AlertModel value, $Res Function(_$_AlertModel) then) =
      __$$_AlertModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AlertType type, bool translatable, int? code});
}

/// @nodoc
class __$$_AlertModelCopyWithImpl<$Res>
    extends _$AlertModelCopyWithImpl<$Res, _$_AlertModel>
    implements _$$_AlertModelCopyWith<$Res> {
  __$$_AlertModelCopyWithImpl(
      _$_AlertModel _value, $Res Function(_$_AlertModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
    Object? translatable = null,
    Object? code = freezed,
  }) {
    return _then(_$_AlertModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlertType,
      translatable: null == translatable
          ? _value.translatable
          : translatable // ignore: cast_nullable_to_non_nullable
              as bool,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AlertModel implements _AlertModel {
  const _$_AlertModel(
      {required this.message,
      required this.type,
      this.translatable = false,
      this.code});

  @override
  final String message;
  @override
  final AlertType type;
  @override
  @JsonKey()
  final bool translatable;
  @override
  final int? code;

  @override
  String toString() {
    return 'AlertModel(message: $message, type: $type, translatable: $translatable, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlertModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.translatable, translatable) ||
                other.translatable == translatable) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, type, translatable, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertModelCopyWith<_$_AlertModel> get copyWith =>
      __$$_AlertModelCopyWithImpl<_$_AlertModel>(this, _$identity);
}

abstract class _AlertModel implements AlertModel {
  const factory _AlertModel(
      {required final String message,
      required final AlertType type,
      final bool translatable,
      final int? code}) = _$_AlertModel;

  @override
  String get message;
  @override
  AlertType get type;
  @override
  bool get translatable;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$_AlertModelCopyWith<_$_AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}
