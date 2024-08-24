// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QueryEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryEventCopyWith<T, $Res> {
  factory $QueryEventCopyWith(
          QueryEvent<T> value, $Res Function(QueryEvent<T>) then) =
      _$QueryEventCopyWithImpl<T, $Res, QueryEvent<T>>;
}

/// @nodoc
class _$QueryEventCopyWithImpl<T, $Res, $Val extends QueryEvent<T>>
    implements $QueryEventCopyWith<T, $Res> {
  _$QueryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QueryEventErrorImplCopyWith<T, $Res> {
  factory _$$QueryEventErrorImplCopyWith(_$QueryEventErrorImpl<T> value,
          $Res Function(_$QueryEventErrorImpl<T>) then) =
      __$$QueryEventErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$QueryEventErrorImplCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$QueryEventErrorImpl<T>>
    implements _$$QueryEventErrorImplCopyWith<T, $Res> {
  __$$QueryEventErrorImplCopyWithImpl(_$QueryEventErrorImpl<T> _value,
      $Res Function(_$QueryEventErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$QueryEventErrorImpl<T>(
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

class _$QueryEventErrorImpl<T> implements _QueryEventError<T> {
  const _$QueryEventErrorImpl({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryEvent<$T>.error(error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryEventErrorImplCopyWith<T, _$QueryEventErrorImpl<T>> get copyWith =>
      __$$QueryEventErrorImplCopyWithImpl<T, _$QueryEventErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) {
    return error(this.error, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) {
    return error?.call(this.error, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QueryEventError<T> implements QueryEvent<T> {
  const factory _QueryEventError(
      {required final OperationException error,
      required final QueryResult<Object?> result}) = _$QueryEventErrorImpl<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$QueryEventErrorImplCopyWith<T, _$QueryEventErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryEventRunImplCopyWith<T, $Res> {
  factory _$$QueryEventRunImplCopyWith(_$QueryEventRunImpl<T> value,
          $Res Function(_$QueryEventRunImpl<T>) then) =
      __$$QueryEventRunImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Map<String, dynamic>? variables, Object? optimisticResult});
}

/// @nodoc
class __$$QueryEventRunImplCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$QueryEventRunImpl<T>>
    implements _$$QueryEventRunImplCopyWith<T, $Res> {
  __$$QueryEventRunImplCopyWithImpl(_$QueryEventRunImpl<T> _value,
      $Res Function(_$QueryEventRunImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = freezed,
    Object? optimisticResult = freezed,
  }) {
    return _then(_$QueryEventRunImpl<T>(
      variables: freezed == variables
          ? _value._variables
          : variables // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      optimisticResult: freezed == optimisticResult
          ? _value.optimisticResult
          : optimisticResult,
    ));
  }
}

/// @nodoc

class _$QueryEventRunImpl<T> implements _QueryEventRun<T> {
  const _$QueryEventRunImpl(
      {final Map<String, dynamic>? variables, this.optimisticResult})
      : _variables = variables;

  final Map<String, dynamic>? _variables;
  @override
  Map<String, dynamic>? get variables {
    final value = _variables;
    if (value == null) return null;
    if (_variables is EqualUnmodifiableMapView) return _variables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Object? optimisticResult;

  @override
  String toString() {
    return 'QueryEvent<$T>.run(variables: $variables, optimisticResult: $optimisticResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventRunImpl<T> &&
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
  _$$QueryEventRunImplCopyWith<T, _$QueryEventRunImpl<T>> get copyWith =>
      __$$QueryEventRunImplCopyWithImpl<T, _$QueryEventRunImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) {
    return run(variables, optimisticResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) {
    return run?.call(variables, optimisticResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
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
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _QueryEventRun<T> implements QueryEvent<T> {
  const factory _QueryEventRun(
      {final Map<String, dynamic>? variables,
      final Object? optimisticResult}) = _$QueryEventRunImpl<T>;

  Map<String, dynamic>? get variables;
  Object? get optimisticResult;
  @JsonKey(ignore: true)
  _$$QueryEventRunImplCopyWith<T, _$QueryEventRunImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryEventLoadingImplCopyWith<T, $Res> {
  factory _$$QueryEventLoadingImplCopyWith(_$QueryEventLoadingImpl<T> value,
          $Res Function(_$QueryEventLoadingImpl<T>) then) =
      __$$QueryEventLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$QueryEventLoadingImplCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$QueryEventLoadingImpl<T>>
    implements _$$QueryEventLoadingImplCopyWith<T, $Res> {
  __$$QueryEventLoadingImplCopyWithImpl(_$QueryEventLoadingImpl<T> _value,
      $Res Function(_$QueryEventLoadingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$QueryEventLoadingImpl<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$QueryEventLoadingImpl<T> implements _QueryEventLoading<T> {
  const _$QueryEventLoadingImpl({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryEvent<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventLoadingImpl<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryEventLoadingImplCopyWith<T, _$QueryEventLoadingImpl<T>>
      get copyWith =>
          __$$QueryEventLoadingImplCopyWithImpl<T, _$QueryEventLoadingImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) {
    return loading(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) {
    return loading?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QueryEventLoading<T> implements QueryEvent<T> {
  const factory _QueryEventLoading(
          {required final QueryResult<Object?> result}) =
      _$QueryEventLoadingImpl<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$QueryEventLoadingImplCopyWith<T, _$QueryEventLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryEventLoadedImplCopyWith<T, $Res> {
  factory _$$QueryEventLoadedImplCopyWith(_$QueryEventLoadedImpl<T> value,
          $Res Function(_$QueryEventLoadedImpl<T>) then) =
      __$$QueryEventLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$QueryEventLoadedImplCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$QueryEventLoadedImpl<T>>
    implements _$$QueryEventLoadedImplCopyWith<T, $Res> {
  __$$QueryEventLoadedImplCopyWithImpl(_$QueryEventLoadedImpl<T> _value,
      $Res Function(_$QueryEventLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$QueryEventLoadedImpl<T>(
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

class _$QueryEventLoadedImpl<T> implements _QueryEventLoaded<T> {
  const _$QueryEventLoadedImpl({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryEvent<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryEventLoadedImplCopyWith<T, _$QueryEventLoadedImpl<T>> get copyWith =>
      __$$QueryEventLoadedImplCopyWithImpl<T, _$QueryEventLoadedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) {
    return loaded(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) {
    return loaded?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QueryEventLoaded<T> implements QueryEvent<T> {
  const factory _QueryEventLoaded(
      {required final T data,
      required final QueryResult<Object?> result}) = _$QueryEventLoadedImpl<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$QueryEventLoadedImplCopyWith<T, _$QueryEventLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryEventRefetchImplCopyWith<T, $Res> {
  factory _$$QueryEventRefetchImplCopyWith(_$QueryEventRefetchImpl<T> value,
          $Res Function(_$QueryEventRefetchImpl<T>) then) =
      __$$QueryEventRefetchImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$QueryEventRefetchImplCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$QueryEventRefetchImpl<T>>
    implements _$$QueryEventRefetchImplCopyWith<T, $Res> {
  __$$QueryEventRefetchImplCopyWithImpl(_$QueryEventRefetchImpl<T> _value,
      $Res Function(_$QueryEventRefetchImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QueryEventRefetchImpl<T> implements _QueryEventRefetch<T> {
  const _$QueryEventRefetchImpl();

  @override
  String toString() {
    return 'QueryEvent<$T>.refetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventRefetchImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) {
    return refetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) {
    return refetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
    required TResult orElse(),
  }) {
    if (refetch != null) {
      return refetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) {
    return refetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) {
    return refetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (refetch != null) {
      return refetch(this);
    }
    return orElse();
  }
}

abstract class _QueryEventRefetch<T> implements QueryEvent<T> {
  const factory _QueryEventRefetch() = _$QueryEventRefetchImpl<T>;
}

/// @nodoc
abstract class _$$QueryEventFetchMoreImplCopyWith<T, $Res> {
  factory _$$QueryEventFetchMoreImplCopyWith(_$QueryEventFetchMoreImpl<T> value,
          $Res Function(_$QueryEventFetchMoreImpl<T>) then) =
      __$$QueryEventFetchMoreImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FetchMoreOptions options});
}

/// @nodoc
class __$$QueryEventFetchMoreImplCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$QueryEventFetchMoreImpl<T>>
    implements _$$QueryEventFetchMoreImplCopyWith<T, $Res> {
  __$$QueryEventFetchMoreImplCopyWithImpl(_$QueryEventFetchMoreImpl<T> _value,
      $Res Function(_$QueryEventFetchMoreImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(_$QueryEventFetchMoreImpl<T>(
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as FetchMoreOptions,
    ));
  }
}

/// @nodoc

class _$QueryEventFetchMoreImpl<T> implements _QueryEventFetchMore<T> {
  const _$QueryEventFetchMoreImpl({required this.options});

  @override
  final FetchMoreOptions options;

  @override
  String toString() {
    return 'QueryEvent<$T>.fetchMore(options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryEventFetchMoreImpl<T> &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryEventFetchMoreImplCopyWith<T, _$QueryEventFetchMoreImpl<T>>
      get copyWith => __$$QueryEventFetchMoreImplCopyWithImpl<T,
          _$QueryEventFetchMoreImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(
            Map<String, dynamic>? variables, Object? optimisticResult)
        run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function() refetch,
    required TResult Function(FetchMoreOptions options) fetchMore,
  }) {
    return fetchMore(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(
            Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function()? refetch,
    TResult? Function(FetchMoreOptions options)? fetchMore,
  }) {
    return fetchMore?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(Map<String, dynamic>? variables, Object? optimisticResult)?
        run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function()? refetch,
    TResult Function(FetchMoreOptions options)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryEventError<T> value) error,
    required TResult Function(_QueryEventRun<T> value) run,
    required TResult Function(_QueryEventLoading<T> value) loading,
    required TResult Function(_QueryEventLoaded<T> value) loaded,
    required TResult Function(_QueryEventRefetch<T> value) refetch,
    required TResult Function(_QueryEventFetchMore<T> value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryEventError<T> value)? error,
    TResult? Function(_QueryEventRun<T> value)? run,
    TResult? Function(_QueryEventLoading<T> value)? loading,
    TResult? Function(_QueryEventLoaded<T> value)? loaded,
    TResult? Function(_QueryEventRefetch<T> value)? refetch,
    TResult? Function(_QueryEventFetchMore<T> value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryEventError<T> value)? error,
    TResult Function(_QueryEventRun<T> value)? run,
    TResult Function(_QueryEventLoading<T> value)? loading,
    TResult Function(_QueryEventLoaded<T> value)? loaded,
    TResult Function(_QueryEventRefetch<T> value)? refetch,
    TResult Function(_QueryEventFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _QueryEventFetchMore<T> implements QueryEvent<T> {
  const factory _QueryEventFetchMore(
      {required final FetchMoreOptions options}) = _$QueryEventFetchMoreImpl<T>;

  FetchMoreOptions get options;
  @JsonKey(ignore: true)
  _$$QueryEventFetchMoreImplCopyWith<T, _$QueryEventFetchMoreImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QueryState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryStateCopyWith<T, $Res> {
  factory $QueryStateCopyWith(
          QueryState<T> value, $Res Function(QueryState<T>) then) =
      _$QueryStateCopyWithImpl<T, $Res, QueryState<T>>;
}

/// @nodoc
class _$QueryStateCopyWithImpl<T, $Res, $Val extends QueryState<T>>
    implements $QueryStateCopyWith<T, $Res> {
  _$QueryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QueryStateInitialImplCopyWith<T, $Res> {
  factory _$$QueryStateInitialImplCopyWith(_$QueryStateInitialImpl<T> value,
          $Res Function(_$QueryStateInitialImpl<T>) then) =
      __$$QueryStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$QueryStateInitialImplCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$QueryStateInitialImpl<T>>
    implements _$$QueryStateInitialImplCopyWith<T, $Res> {
  __$$QueryStateInitialImplCopyWithImpl(_$QueryStateInitialImpl<T> _value,
      $Res Function(_$QueryStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QueryStateInitialImpl<T> implements _QueryStateInitial<T> {
  const _$QueryStateInitialImpl();

  @override
  String toString() {
    return 'QueryState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
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
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QueryStateInitial<T> implements QueryState<T> {
  const factory _QueryStateInitial() = _$QueryStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$QueryStateLoadingImplCopyWith<T, $Res> {
  factory _$$QueryStateLoadingImplCopyWith(_$QueryStateLoadingImpl<T> value,
          $Res Function(_$QueryStateLoadingImpl<T>) then) =
      __$$QueryStateLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$QueryStateLoadingImplCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$QueryStateLoadingImpl<T>>
    implements _$$QueryStateLoadingImplCopyWith<T, $Res> {
  __$$QueryStateLoadingImplCopyWithImpl(_$QueryStateLoadingImpl<T> _value,
      $Res Function(_$QueryStateLoadingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$QueryStateLoadingImpl<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$QueryStateLoadingImpl<T> implements _QueryStateLoading<T> {
  const _$QueryStateLoadingImpl({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryState<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryStateLoadingImpl<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryStateLoadingImplCopyWith<T, _$QueryStateLoadingImpl<T>>
      get copyWith =>
          __$$QueryStateLoadingImplCopyWithImpl<T, _$QueryStateLoadingImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) {
    return loading(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) {
    return loading?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _QueryStateLoading<T> implements QueryState<T> {
  const factory _QueryStateLoading(
          {required final QueryResult<Object?> result}) =
      _$QueryStateLoadingImpl<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$QueryStateLoadingImplCopyWith<T, _$QueryStateLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryStateErrorImplCopyWith<T, $Res> {
  factory _$$QueryStateErrorImplCopyWith(_$QueryStateErrorImpl<T> value,
          $Res Function(_$QueryStateErrorImpl<T>) then) =
      __$$QueryStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$QueryStateErrorImplCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$QueryStateErrorImpl<T>>
    implements _$$QueryStateErrorImplCopyWith<T, $Res> {
  __$$QueryStateErrorImplCopyWithImpl(_$QueryStateErrorImpl<T> _value,
      $Res Function(_$QueryStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$QueryStateErrorImpl<T>(
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

class _$QueryStateErrorImpl<T> implements _QueryStateError<T> {
  const _$QueryStateErrorImpl({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryState<$T>.error(error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryStateErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryStateErrorImplCopyWith<T, _$QueryStateErrorImpl<T>> get copyWith =>
      __$$QueryStateErrorImplCopyWithImpl<T, _$QueryStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) {
    return error(this.error, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) {
    return error?.call(this.error, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _QueryStateError<T> implements QueryState<T> {
  const factory _QueryStateError(
      {required final OperationException error,
      required final QueryResult<Object?> result}) = _$QueryStateErrorImpl<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$QueryStateErrorImplCopyWith<T, _$QueryStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryStateLoadedImplCopyWith<T, $Res> {
  factory _$$QueryStateLoadedImplCopyWith(_$QueryStateLoadedImpl<T> value,
          $Res Function(_$QueryStateLoadedImpl<T>) then) =
      __$$QueryStateLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$QueryStateLoadedImplCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$QueryStateLoadedImpl<T>>
    implements _$$QueryStateLoadedImplCopyWith<T, $Res> {
  __$$QueryStateLoadedImplCopyWithImpl(_$QueryStateLoadedImpl<T> _value,
      $Res Function(_$QueryStateLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$QueryStateLoadedImpl<T>(
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

class _$QueryStateLoadedImpl<T> implements _QueryStateLoaded<T> {
  const _$QueryStateLoadedImpl({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryState<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryStateLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryStateLoadedImplCopyWith<T, _$QueryStateLoadedImpl<T>> get copyWith =>
      __$$QueryStateLoadedImplCopyWithImpl<T, _$QueryStateLoadedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) {
    return loaded(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) {
    return loaded?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _QueryStateLoaded<T> implements QueryState<T> {
  const factory _QueryStateLoaded(
      {required final T data,
      required final QueryResult<Object?> result}) = _$QueryStateLoadedImpl<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$QueryStateLoadedImplCopyWith<T, _$QueryStateLoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryStateRefetchImplCopyWith<T, $Res> {
  factory _$$QueryStateRefetchImplCopyWith(_$QueryStateRefetchImpl<T> value,
          $Res Function(_$QueryStateRefetchImpl<T>) then) =
      __$$QueryStateRefetchImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, QueryResult<Object?>? result});
}

/// @nodoc
class __$$QueryStateRefetchImplCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$QueryStateRefetchImpl<T>>
    implements _$$QueryStateRefetchImplCopyWith<T, $Res> {
  __$$QueryStateRefetchImplCopyWithImpl(_$QueryStateRefetchImpl<T> _value,
      $Res Function(_$QueryStateRefetchImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_$QueryStateRefetchImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>?,
    ));
  }
}

/// @nodoc

class _$QueryStateRefetchImpl<T> implements _QueryStateRefetch<T> {
  const _$QueryStateRefetchImpl({this.data, this.result});

  @override
  final T? data;
  @override
  final QueryResult<Object?>? result;

  @override
  String toString() {
    return 'QueryState<$T>.refetch(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryStateRefetchImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryStateRefetchImplCopyWith<T, _$QueryStateRefetchImpl<T>>
      get copyWith =>
          __$$QueryStateRefetchImplCopyWithImpl<T, _$QueryStateRefetchImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) {
    return refetch(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) {
    return refetch?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
    required TResult orElse(),
  }) {
    if (refetch != null) {
      return refetch(data, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) {
    return refetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) {
    return refetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (refetch != null) {
      return refetch(this);
    }
    return orElse();
  }
}

abstract class _QueryStateRefetch<T> implements QueryState<T> {
  const factory _QueryStateRefetch(
      {final T? data,
      final QueryResult<Object?>? result}) = _$QueryStateRefetchImpl<T>;

  T? get data;
  QueryResult<Object?>? get result;
  @JsonKey(ignore: true)
  _$$QueryStateRefetchImplCopyWith<T, _$QueryStateRefetchImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueryStateFetchMoreImplCopyWith<T, $Res> {
  factory _$$QueryStateFetchMoreImplCopyWith(_$QueryStateFetchMoreImpl<T> value,
          $Res Function(_$QueryStateFetchMoreImpl<T>) then) =
      __$$QueryStateFetchMoreImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?>? result});
}

/// @nodoc
class __$$QueryStateFetchMoreImplCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$QueryStateFetchMoreImpl<T>>
    implements _$$QueryStateFetchMoreImplCopyWith<T, $Res> {
  __$$QueryStateFetchMoreImplCopyWithImpl(_$QueryStateFetchMoreImpl<T> _value,
      $Res Function(_$QueryStateFetchMoreImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_$QueryStateFetchMoreImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>?,
    ));
  }
}

/// @nodoc

class _$QueryStateFetchMoreImpl<T> implements _QueryStateFetchMore<T> {
  const _$QueryStateFetchMoreImpl({required this.data, this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?>? result;

  @override
  String toString() {
    return 'QueryState<$T>.fetchMore(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryStateFetchMoreImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryStateFetchMoreImplCopyWith<T, _$QueryStateFetchMoreImpl<T>>
      get copyWith => __$$QueryStateFetchMoreImplCopyWithImpl<T,
          _$QueryStateFetchMoreImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        error,
    required TResult Function(T data, QueryResult<Object?> result) loaded,
    required TResult Function(T? data, QueryResult<Object?>? result) refetch,
    required TResult Function(T data, QueryResult<Object?>? result) fetchMore,
  }) {
    return fetchMore(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult? Function(T data, QueryResult<Object?> result)? loaded,
    TResult? Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult? Function(T data, QueryResult<Object?>? result)? fetchMore,
  }) {
    return fetchMore?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        error,
    TResult Function(T data, QueryResult<Object?> result)? loaded,
    TResult Function(T? data, QueryResult<Object?>? result)? refetch,
    TResult Function(T data, QueryResult<Object?>? result)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(data, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryStateInitial<T> value) initial,
    required TResult Function(_QueryStateLoading<T> value) loading,
    required TResult Function(_QueryStateError<T> value) error,
    required TResult Function(_QueryStateLoaded<T> value) loaded,
    required TResult Function(_QueryStateRefetch<T> value) refetch,
    required TResult Function(_QueryStateFetchMore<T> value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryStateInitial<T> value)? initial,
    TResult? Function(_QueryStateLoading<T> value)? loading,
    TResult? Function(_QueryStateError<T> value)? error,
    TResult? Function(_QueryStateLoaded<T> value)? loaded,
    TResult? Function(_QueryStateRefetch<T> value)? refetch,
    TResult? Function(_QueryStateFetchMore<T> value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryStateInitial<T> value)? initial,
    TResult Function(_QueryStateLoading<T> value)? loading,
    TResult Function(_QueryStateError<T> value)? error,
    TResult Function(_QueryStateLoaded<T> value)? loaded,
    TResult Function(_QueryStateRefetch<T> value)? refetch,
    TResult Function(_QueryStateFetchMore<T> value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _QueryStateFetchMore<T> implements QueryState<T> {
  const factory _QueryStateFetchMore(
      {required final T data,
      final QueryResult<Object?>? result}) = _$QueryStateFetchMoreImpl<T>;

  T get data;
  QueryResult<Object?>? get result;
  @JsonKey(ignore: true)
  _$$QueryStateFetchMoreImplCopyWith<T, _$QueryStateFetchMoreImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
