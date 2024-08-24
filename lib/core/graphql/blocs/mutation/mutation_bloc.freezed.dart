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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$MutationEventRunImplCopyWith<T, $Res>
    implements $MutationEventCopyWith<T, $Res> {
  factory _$$MutationEventRunImplCopyWith(_$MutationEventRunImpl<T> value,
          $Res Function(_$MutationEventRunImpl<T>) then) =
      __$$MutationEventRunImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> variables, Object? optimisticResult});
}

/// @nodoc
class __$$MutationEventRunImplCopyWithImpl<T, $Res>
    extends _$MutationEventCopyWithImpl<T, $Res, _$MutationEventRunImpl<T>>
    implements _$$MutationEventRunImplCopyWith<T, $Res> {
  __$$MutationEventRunImplCopyWithImpl(_$MutationEventRunImpl<T> _value,
      $Res Function(_$MutationEventRunImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = null,
    Object? optimisticResult = freezed,
  }) {
    return _then(_$MutationEventRunImpl<T>(
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

class _$MutationEventRunImpl<T> implements _MutationEventRun<T> {
  const _$MutationEventRunImpl(final Map<String, dynamic> variables,
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutationEventRunImpl<T> &&
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
  _$$MutationEventRunImplCopyWith<T, _$MutationEventRunImpl<T>> get copyWith =>
      __$$MutationEventRunImplCopyWithImpl<T, _$MutationEventRunImpl<T>>(
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
      {final Object? optimisticResult}) = _$MutationEventRunImpl<T>;

  @override
  Map<String, dynamic> get variables;
  @override
  Object? get optimisticResult;
  @override
  @JsonKey(ignore: true)
  _$$MutationEventRunImplCopyWith<T, _$MutationEventRunImpl<T>> get copyWith =>
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
abstract class _$$MutationInitialImplCopyWith<T, $Res> {
  factory _$$MutationInitialImplCopyWith(_$MutationInitialImpl<T> value,
          $Res Function(_$MutationInitialImpl<T>) then) =
      __$$MutationInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MutationInitialImplCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$MutationInitialImpl<T>>
    implements _$$MutationInitialImplCopyWith<T, $Res> {
  __$$MutationInitialImplCopyWithImpl(_$MutationInitialImpl<T> _value,
      $Res Function(_$MutationInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MutationInitialImpl<T> implements _MutationInitial<T> {
  const _$MutationInitialImpl();

  @override
  String toString() {
    return 'MutationState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MutationInitialImpl<T>);
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
  const factory _MutationInitial() = _$MutationInitialImpl<T>;
}

/// @nodoc
abstract class _$$MutationLoadingImplCopyWith<T, $Res> {
  factory _$$MutationLoadingImplCopyWith(_$MutationLoadingImpl<T> value,
          $Res Function(_$MutationLoadingImpl<T>) then) =
      __$$MutationLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MutationLoadingImplCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$MutationLoadingImpl<T>>
    implements _$$MutationLoadingImplCopyWith<T, $Res> {
  __$$MutationLoadingImplCopyWithImpl(_$MutationLoadingImpl<T> _value,
      $Res Function(_$MutationLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MutationLoadingImpl<T> implements _MutationLoading<T> {
  const _$MutationLoadingImpl();

  @override
  String toString() {
    return 'MutationState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MutationLoadingImpl<T>);
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
  const factory _MutationLoading() = _$MutationLoadingImpl<T>;
}

/// @nodoc
abstract class _$$MutationSucceededImplCopyWith<T, $Res> {
  factory _$$MutationSucceededImplCopyWith(_$MutationSucceededImpl<T> value,
          $Res Function(_$MutationSucceededImpl<T>) then) =
      __$$MutationSucceededImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$MutationSucceededImplCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$MutationSucceededImpl<T>>
    implements _$$MutationSucceededImplCopyWith<T, $Res> {
  __$$MutationSucceededImplCopyWithImpl(_$MutationSucceededImpl<T> _value,
      $Res Function(_$MutationSucceededImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$MutationSucceededImpl<T>(
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

class _$MutationSucceededImpl<T> implements _MutationSucceeded<T> {
  const _$MutationSucceededImpl({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'MutationState<$T>.succeeded(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutationSucceededImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MutationSucceededImplCopyWith<T, _$MutationSucceededImpl<T>>
      get copyWith =>
          __$$MutationSucceededImplCopyWithImpl<T, _$MutationSucceededImpl<T>>(
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
      required final QueryResult<Object?> result}) = _$MutationSucceededImpl<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$MutationSucceededImplCopyWith<T, _$MutationSucceededImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MutationFailedImplCopyWith<T, $Res> {
  factory _$$MutationFailedImplCopyWith(_$MutationFailedImpl<T> value,
          $Res Function(_$MutationFailedImpl<T>) then) =
      __$$MutationFailedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$MutationFailedImplCopyWithImpl<T, $Res>
    extends _$MutationStateCopyWithImpl<T, $Res, _$MutationFailedImpl<T>>
    implements _$$MutationFailedImplCopyWith<T, $Res> {
  __$$MutationFailedImplCopyWithImpl(_$MutationFailedImpl<T> _value,
      $Res Function(_$MutationFailedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$MutationFailedImpl<T>(
      error: freezed == error
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

class _$MutationFailedImpl<T> implements _MutationFailed<T> {
  const _$MutationFailedImpl({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'MutationState<$T>.failed(error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutationFailedImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MutationFailedImplCopyWith<T, _$MutationFailedImpl<T>> get copyWith =>
      __$$MutationFailedImplCopyWithImpl<T, _$MutationFailedImpl<T>>(
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
      required final QueryResult<Object?> result}) = _$MutationFailedImpl<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$MutationFailedImplCopyWith<T, _$MutationFailedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
