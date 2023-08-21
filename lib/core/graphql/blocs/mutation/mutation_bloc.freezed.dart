// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mutation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MutationEvent<T> {
  Map<String, dynamic> get variables => throw _privateConstructorUsedError;
  Object? get optimisticResult => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, dynamic> variables, Object? optimisticResult)
        run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> variables, Object? optimisticResult)?
        run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> variables, Object? optimisticResult)?
        run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationEventRun<T> value) run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationEventRun<T> value)? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationEventRun<T> value)? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MutationEventCopyWith<T, MutationEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutationEventCopyWith<T, $Res> {
  factory $MutationEventCopyWith(
          MutationEvent<T> value, $Res Function(MutationEvent<T>) then) =
      _$MutationEventCopyWithImpl<T, $Res, MutationEvent<T>>;
  @useResult
  $Res call({Map<String, dynamic> variables, Object? optimisticResult});
}

/// @nodoc
class _$MutationEventCopyWithImpl<T, $Res, $Val extends MutationEvent<T>>
    implements $MutationEventCopyWith<T, $Res> {
  _$MutationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = null,
    Object? optimisticResult = freezed,
  }) {
    return _then(_value.copyWith(
      variables: null == variables
          ? _value.variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      optimisticResult: freezed == optimisticResult
          ? _value.optimisticResult
          : optimisticResult,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MutationEventRunCopyWith<T, $Res>
    implements $MutationEventCopyWith<T, $Res> {
  factory _$$_MutationEventRunCopyWith(_$_MutationEventRun<T> value,
          $Res Function(_$_MutationEventRun<T>) then) =
      __$$_MutationEventRunCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> variables, Object? optimisticResult});
}

/// @nodoc
class __$$_MutationEventRunCopyWithImpl<T, $Res>
    extends _$MutationEventCopyWithImpl<T, $Res, _$_MutationEventRun<T>>
    implements _$$_MutationEventRunCopyWith<T, $Res> {
  __$$_MutationEventRunCopyWithImpl(_$_MutationEventRun<T> _value,
      $Res Function(_$_MutationEventRun<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = null,
    Object? optimisticResult = freezed,
  }) {
    return _then(_$_MutationEventRun<T>(
      null == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      optimisticResult: freezed == optimisticResult
          ? _value.optimisticResult
          : optimisticResult,
    ));
  }
}

/// @nodoc

class _$_MutationEventRun<T> implements _MutationEventRun<T> {
  const _$_MutationEventRun(final Map<String, dynamic> variables,
      {this.optimisticResult})
      : _variables = variables;

  final Map<String, dynamic> _variables;
  @override
  Map<String, dynamic> get variables {
    if (_variables is EqualUnmodifiableMapView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_variables);
  }

  @override
  final Object? optimisticResult;

  @override
  String toString() {
    return 'MutationEvent<$T>.run(variables: $variables, optimisticResult: $optimisticResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MutationEventRun<T> &&
            const DeepCollectionEquality()
                .equals(other._variables, _variables) &&
            const DeepCollectionEquality()
                .equals(other.optimisticResult, optimisticResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_variables),
      const DeepCollectionEquality().hash(optimisticResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MutationEventRunCopyWith<T, _$_MutationEventRun<T>> get copyWith =>
      __$$_MutationEventRunCopyWithImpl<T, _$_MutationEventRun<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Map<String, dynamic> variables, Object? optimisticResult)
        run,
  }) {
    return run(variables, optimisticResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> variables, Object? optimisticResult)?
        run,
  }) {
    return run?.call(variables, optimisticResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> variables, Object? optimisticResult)?
        run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(variables, optimisticResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationEventRun<T> value) run,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationEventRun<T> value)? run,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationEventRun<T> value)? run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _MutationEventRun<T> implements MutationEvent<T> {
  const factory _MutationEventRun(final Map<String, dynamic> variables,
      {final Object? optimisticResult}) = _$_MutationEventRun<T>;

  @override
  Map<String, dynamic> get variables;
  @override
  Object? get optimisticResult;
  @override
  @JsonKey(ignore: true)
  _$$_MutationEventRunCopyWith<T, _$_MutationEventRun<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MutationState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, QueryResult<Object?> result) succeeded,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationInitial<T> value) initial,
    required TResult Function(_MutationLoading<T> value) loading,
    required TResult Function(_MutationSucceeded<T> value) succeeded,
    required TResult Function(_MutationFailed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationInitial<T> value)? initial,
    TResult? Function(_MutationLoading<T> value)? loading,
    TResult? Function(_MutationSucceeded<T> value)? succeeded,
    TResult? Function(_MutationFailed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationInitial<T> value)? initial,
    TResult Function(_MutationLoading<T> value)? loading,
    TResult Function(_MutationSucceeded<T> value)? succeeded,
    TResult Function(_MutationFailed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutationStateCopyWith<T, $Res> {
  factory $MutationStateCopyWith(
          MutationState<T> value, $Res Function(MutationState<T>) then) =
      _$MutationStateCopyWithImpl<T, $Res, MutationState<T>>;
}

/// @nodoc
class _$MutationStateCopyWithImpl<T, $Res, $Val extends MutationState<T>>
    implements $MutationStateCopyWith<T, $Res> {
  _$MutationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MutationInitialCopyWith<T, $Res> {
  factory _$$_MutationInitialCopyWith(_$_MutationInitial<T> value,
          $Res Function(_$_MutationInitial<T>) then) =
      __$$_MutationInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_MutationInitialCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$_MutationInitial<T>>
    implements _$$_MutationInitialCopyWith<T, $Res> {
  __$$_MutationInitialCopyWithImpl(
      _$_MutationInitial<T> _value, $Res Function(_$_MutationInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MutationInitial<T> implements _MutationInitial<T> {
  const _$_MutationInitial();

  @override
  String toString() {
    return 'MutationState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MutationInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, QueryResult<Object?> result) succeeded,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationInitial<T> value) initial,
    required TResult Function(_MutationLoading<T> value) loading,
    required TResult Function(_MutationSucceeded<T> value) succeeded,
    required TResult Function(_MutationFailed<T> value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationInitial<T> value)? initial,
    TResult? Function(_MutationLoading<T> value)? loading,
    TResult? Function(_MutationSucceeded<T> value)? succeeded,
    TResult? Function(_MutationFailed<T> value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationInitial<T> value)? initial,
    TResult Function(_MutationLoading<T> value)? loading,
    TResult Function(_MutationSucceeded<T> value)? succeeded,
    TResult Function(_MutationFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MutationInitial<T> implements MutationState<T> {
  const factory _MutationInitial() = _$_MutationInitial<T>;
}

/// @nodoc
abstract class _$$_MutationLoadingCopyWith<T, $Res> {
  factory _$$_MutationLoadingCopyWith(_$_MutationLoading<T> value,
          $Res Function(_$_MutationLoading<T>) then) =
      __$$_MutationLoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_MutationLoadingCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$_MutationLoading<T>>
    implements _$$_MutationLoadingCopyWith<T, $Res> {
  __$$_MutationLoadingCopyWithImpl(
      _$_MutationLoading<T> _value, $Res Function(_$_MutationLoading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MutationLoading<T> implements _MutationLoading<T> {
  const _$_MutationLoading();

  @override
  String toString() {
    return 'MutationState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MutationLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, QueryResult<Object?> result) succeeded,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationInitial<T> value) initial,
    required TResult Function(_MutationLoading<T> value) loading,
    required TResult Function(_MutationSucceeded<T> value) succeeded,
    required TResult Function(_MutationFailed<T> value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationInitial<T> value)? initial,
    TResult? Function(_MutationLoading<T> value)? loading,
    TResult? Function(_MutationSucceeded<T> value)? succeeded,
    TResult? Function(_MutationFailed<T> value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationInitial<T> value)? initial,
    TResult Function(_MutationLoading<T> value)? loading,
    TResult Function(_MutationSucceeded<T> value)? succeeded,
    TResult Function(_MutationFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MutationLoading<T> implements MutationState<T> {
  const factory _MutationLoading() = _$_MutationLoading<T>;
}

/// @nodoc
abstract class _$$_MutationSucceededCopyWith<T, $Res> {
  factory _$$_MutationSucceededCopyWith(_$_MutationSucceeded<T> value,
          $Res Function(_$_MutationSucceeded<T>) then) =
      __$$_MutationSucceededCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$_MutationSucceededCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$_MutationSucceeded<T>>
    implements _$$_MutationSucceededCopyWith<T, $Res> {
  __$$_MutationSucceededCopyWithImpl(_$_MutationSucceeded<T> _value,
      $Res Function(_$_MutationSucceeded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$_MutationSucceeded<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$_MutationSucceeded<T> implements _MutationSucceeded<T> {
  const _$_MutationSucceeded({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'MutationState<$T>.succeeded(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MutationSucceeded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MutationSucceededCopyWith<T, _$_MutationSucceeded<T>> get copyWith =>
      __$$_MutationSucceededCopyWithImpl<T, _$_MutationSucceeded<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, QueryResult<Object?> result) succeeded,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        failed,
  }) {
    return succeeded(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) {
    return succeeded?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(data, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationInitial<T> value) initial,
    required TResult Function(_MutationLoading<T> value) loading,
    required TResult Function(_MutationSucceeded<T> value) succeeded,
    required TResult Function(_MutationFailed<T> value) failed,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationInitial<T> value)? initial,
    TResult? Function(_MutationLoading<T> value)? loading,
    TResult? Function(_MutationSucceeded<T> value)? succeeded,
    TResult? Function(_MutationFailed<T> value)? failed,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationInitial<T> value)? initial,
    TResult Function(_MutationLoading<T> value)? loading,
    TResult Function(_MutationSucceeded<T> value)? succeeded,
    TResult Function(_MutationFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _MutationSucceeded<T> implements MutationState<T> {
  const factory _MutationSucceeded(
      {required final T data,
      required final QueryResult<Object?> result}) = _$_MutationSucceeded<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_MutationSucceededCopyWith<T, _$_MutationSucceeded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MutationFailedCopyWith<T, $Res> {
  factory _$$_MutationFailedCopyWith(_$_MutationFailed<T> value,
          $Res Function(_$_MutationFailed<T>) then) =
      __$$_MutationFailedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$_MutationFailedCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$_MutationFailed<T>>
    implements _$$_MutationFailedCopyWith<T, $Res> {
  __$$_MutationFailedCopyWithImpl(
      _$_MutationFailed<T> _value, $Res Function(_$_MutationFailed<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_MutationFailed<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OperationException,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$_MutationFailed<T> implements _MutationFailed<T> {
  const _$_MutationFailed({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'MutationState<$T>.failed(error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MutationFailed<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MutationFailedCopyWith<T, _$_MutationFailed<T>> get copyWith =>
      __$$_MutationFailedCopyWithImpl<T, _$_MutationFailed<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data, QueryResult<Object?> result) succeeded,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        failed,
  }) {
    return failed(error, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) {
    return failed?.call(error, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MutationInitial<T> value) initial,
    required TResult Function(_MutationLoading<T> value) loading,
    required TResult Function(_MutationSucceeded<T> value) succeeded,
    required TResult Function(_MutationFailed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MutationInitial<T> value)? initial,
    TResult? Function(_MutationLoading<T> value)? loading,
    TResult? Function(_MutationSucceeded<T> value)? succeeded,
    TResult? Function(_MutationFailed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MutationInitial<T> value)? initial,
    TResult Function(_MutationLoading<T> value)? loading,
    TResult Function(_MutationSucceeded<T> value)? succeeded,
    TResult Function(_MutationFailed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _MutationFailed<T> implements MutationState<T> {
  const factory _MutationFailed(
      {required final OperationException error,
      required final QueryResult<Object?> result}) = _$_MutationFailed<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_MutationFailedCopyWith<T, _$_MutationFailed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
