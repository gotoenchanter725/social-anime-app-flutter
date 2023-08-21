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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_QueryEventErrorCopyWith<T, $Res> {
  factory _$$_QueryEventErrorCopyWith(_$_QueryEventError<T> value,
          $Res Function(_$_QueryEventError<T>) then) =
      __$$_QueryEventErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$_QueryEventErrorCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$_QueryEventError<T>>
    implements _$$_QueryEventErrorCopyWith<T, $Res> {
  __$$_QueryEventErrorCopyWithImpl(
      _$_QueryEventError<T> _value, $Res Function(_$_QueryEventError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_QueryEventError<T>(
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

class _$_QueryEventError<T> implements _QueryEventError<T> {
  const _$_QueryEventError({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryEvent<$T>.error(error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryEventError<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryEventErrorCopyWith<T, _$_QueryEventError<T>> get copyWith =>
      __$$_QueryEventErrorCopyWithImpl<T, _$_QueryEventError<T>>(
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
      required final QueryResult<Object?> result}) = _$_QueryEventError<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_QueryEventErrorCopyWith<T, _$_QueryEventError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryEventRunCopyWith<T, $Res> {
  factory _$$_QueryEventRunCopyWith(
          _$_QueryEventRun<T> value, $Res Function(_$_QueryEventRun<T>) then) =
      __$$_QueryEventRunCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Map<String, dynamic>? variables, Object? optimisticResult});
}

/// @nodoc
class __$$_QueryEventRunCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$_QueryEventRun<T>>
    implements _$$_QueryEventRunCopyWith<T, $Res> {
  __$$_QueryEventRunCopyWithImpl(
      _$_QueryEventRun<T> _value, $Res Function(_$_QueryEventRun<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = freezed,
    Object? optimisticResult = freezed,
  }) {
    return _then(_$_QueryEventRun<T>(
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

class _$_QueryEventRun<T> implements _QueryEventRun<T> {
  const _$_QueryEventRun(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryEventRun<T> &&
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
  _$$_QueryEventRunCopyWith<T, _$_QueryEventRun<T>> get copyWith =>
      __$$_QueryEventRunCopyWithImpl<T, _$_QueryEventRun<T>>(this, _$identity);

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
      final Object? optimisticResult}) = _$_QueryEventRun<T>;

  Map<String, dynamic>? get variables;
  Object? get optimisticResult;
  @JsonKey(ignore: true)
  _$$_QueryEventRunCopyWith<T, _$_QueryEventRun<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryEventLoadingCopyWith<T, $Res> {
  factory _$$_QueryEventLoadingCopyWith(_$_QueryEventLoading<T> value,
          $Res Function(_$_QueryEventLoading<T>) then) =
      __$$_QueryEventLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$_QueryEventLoadingCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$_QueryEventLoading<T>>
    implements _$$_QueryEventLoadingCopyWith<T, $Res> {
  __$$_QueryEventLoadingCopyWithImpl(_$_QueryEventLoading<T> _value,
      $Res Function(_$_QueryEventLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_QueryEventLoading<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$_QueryEventLoading<T> implements _QueryEventLoading<T> {
  const _$_QueryEventLoading({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryEvent<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryEventLoading<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryEventLoadingCopyWith<T, _$_QueryEventLoading<T>> get copyWith =>
      __$$_QueryEventLoadingCopyWithImpl<T, _$_QueryEventLoading<T>>(
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
      {required final QueryResult<Object?> result}) = _$_QueryEventLoading<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_QueryEventLoadingCopyWith<T, _$_QueryEventLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryEventLoadedCopyWith<T, $Res> {
  factory _$$_QueryEventLoadedCopyWith(_$_QueryEventLoaded<T> value,
          $Res Function(_$_QueryEventLoaded<T>) then) =
      __$$_QueryEventLoadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$_QueryEventLoadedCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$_QueryEventLoaded<T>>
    implements _$$_QueryEventLoadedCopyWith<T, $Res> {
  __$$_QueryEventLoadedCopyWithImpl(_$_QueryEventLoaded<T> _value,
      $Res Function(_$_QueryEventLoaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$_QueryEventLoaded<T>(
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

class _$_QueryEventLoaded<T> implements _QueryEventLoaded<T> {
  const _$_QueryEventLoaded({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryEvent<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryEventLoaded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryEventLoadedCopyWith<T, _$_QueryEventLoaded<T>> get copyWith =>
      __$$_QueryEventLoadedCopyWithImpl<T, _$_QueryEventLoaded<T>>(
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
      required final QueryResult<Object?> result}) = _$_QueryEventLoaded<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_QueryEventLoadedCopyWith<T, _$_QueryEventLoaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryEventRefetchCopyWith<T, $Res> {
  factory _$$_QueryEventRefetchCopyWith(_$_QueryEventRefetch<T> value,
          $Res Function(_$_QueryEventRefetch<T>) then) =
      __$$_QueryEventRefetchCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_QueryEventRefetchCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$_QueryEventRefetch<T>>
    implements _$$_QueryEventRefetchCopyWith<T, $Res> {
  __$$_QueryEventRefetchCopyWithImpl(_$_QueryEventRefetch<T> _value,
      $Res Function(_$_QueryEventRefetch<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QueryEventRefetch<T> implements _QueryEventRefetch<T> {
  const _$_QueryEventRefetch();

  @override
  String toString() {
    return 'QueryEvent<$T>.refetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QueryEventRefetch<T>);
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
  const factory _QueryEventRefetch() = _$_QueryEventRefetch<T>;
}

/// @nodoc
abstract class _$$_QueryEventFetchMoreCopyWith<T, $Res> {
  factory _$$_QueryEventFetchMoreCopyWith(_$_QueryEventFetchMore<T> value,
          $Res Function(_$_QueryEventFetchMore<T>) then) =
      __$$_QueryEventFetchMoreCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FetchMoreOptions options});
}

/// @nodoc
class __$$_QueryEventFetchMoreCopyWithImpl<T, $Res>
    extends _$QueryEventCopyWithImpl<T, $Res, _$_QueryEventFetchMore<T>>
    implements _$$_QueryEventFetchMoreCopyWith<T, $Res> {
  __$$_QueryEventFetchMoreCopyWithImpl(_$_QueryEventFetchMore<T> _value,
      $Res Function(_$_QueryEventFetchMore<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
  }) {
    return _then(_$_QueryEventFetchMore<T>(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as FetchMoreOptions,
    ));
  }
}

/// @nodoc

class _$_QueryEventFetchMore<T> implements _QueryEventFetchMore<T> {
  const _$_QueryEventFetchMore({required this.options});

  @override
  final FetchMoreOptions options;

  @override
  String toString() {
    return 'QueryEvent<$T>.fetchMore(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryEventFetchMore<T> &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryEventFetchMoreCopyWith<T, _$_QueryEventFetchMore<T>> get copyWith =>
      __$$_QueryEventFetchMoreCopyWithImpl<T, _$_QueryEventFetchMore<T>>(
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
      {required final FetchMoreOptions options}) = _$_QueryEventFetchMore<T>;

  FetchMoreOptions get options;
  @JsonKey(ignore: true)
  _$$_QueryEventFetchMoreCopyWith<T, _$_QueryEventFetchMore<T>> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_QueryStateInitialCopyWith<T, $Res> {
  factory _$$_QueryStateInitialCopyWith(_$_QueryStateInitial<T> value,
          $Res Function(_$_QueryStateInitial<T>) then) =
      __$$_QueryStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_QueryStateInitialCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$_QueryStateInitial<T>>
    implements _$$_QueryStateInitialCopyWith<T, $Res> {
  __$$_QueryStateInitialCopyWithImpl(_$_QueryStateInitial<T> _value,
      $Res Function(_$_QueryStateInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_QueryStateInitial<T> implements _QueryStateInitial<T> {
  const _$_QueryStateInitial();

  @override
  String toString() {
    return 'QueryState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_QueryStateInitial<T>);
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
  const factory _QueryStateInitial() = _$_QueryStateInitial<T>;
}

/// @nodoc
abstract class _$$_QueryStateLoadingCopyWith<T, $Res> {
  factory _$$_QueryStateLoadingCopyWith(_$_QueryStateLoading<T> value,
          $Res Function(_$_QueryStateLoading<T>) then) =
      __$$_QueryStateLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$_QueryStateLoadingCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$_QueryStateLoading<T>>
    implements _$$_QueryStateLoadingCopyWith<T, $Res> {
  __$$_QueryStateLoadingCopyWithImpl(_$_QueryStateLoading<T> _value,
      $Res Function(_$_QueryStateLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_QueryStateLoading<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$_QueryStateLoading<T> implements _QueryStateLoading<T> {
  const _$_QueryStateLoading({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryState<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryStateLoading<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryStateLoadingCopyWith<T, _$_QueryStateLoading<T>> get copyWith =>
      __$$_QueryStateLoadingCopyWithImpl<T, _$_QueryStateLoading<T>>(
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
      {required final QueryResult<Object?> result}) = _$_QueryStateLoading<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_QueryStateLoadingCopyWith<T, _$_QueryStateLoading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryStateErrorCopyWith<T, $Res> {
  factory _$$_QueryStateErrorCopyWith(_$_QueryStateError<T> value,
          $Res Function(_$_QueryStateError<T>) then) =
      __$$_QueryStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$_QueryStateErrorCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$_QueryStateError<T>>
    implements _$$_QueryStateErrorCopyWith<T, $Res> {
  __$$_QueryStateErrorCopyWithImpl(
      _$_QueryStateError<T> _value, $Res Function(_$_QueryStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? result = null,
  }) {
    return _then(_$_QueryStateError<T>(
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

class _$_QueryStateError<T> implements _QueryStateError<T> {
  const _$_QueryStateError({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryState<$T>.error(error: $error, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryStateError<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryStateErrorCopyWith<T, _$_QueryStateError<T>> get copyWith =>
      __$$_QueryStateErrorCopyWithImpl<T, _$_QueryStateError<T>>(
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
      required final QueryResult<Object?> result}) = _$_QueryStateError<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_QueryStateErrorCopyWith<T, _$_QueryStateError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryStateLoadedCopyWith<T, $Res> {
  factory _$$_QueryStateLoadedCopyWith(_$_QueryStateLoaded<T> value,
          $Res Function(_$_QueryStateLoaded<T>) then) =
      __$$_QueryStateLoadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$_QueryStateLoadedCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$_QueryStateLoaded<T>>
    implements _$$_QueryStateLoadedCopyWith<T, $Res> {
  __$$_QueryStateLoadedCopyWithImpl(_$_QueryStateLoaded<T> _value,
      $Res Function(_$_QueryStateLoaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$_QueryStateLoaded<T>(
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

class _$_QueryStateLoaded<T> implements _QueryStateLoaded<T> {
  const _$_QueryStateLoaded({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'QueryState<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryStateLoaded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryStateLoadedCopyWith<T, _$_QueryStateLoaded<T>> get copyWith =>
      __$$_QueryStateLoadedCopyWithImpl<T, _$_QueryStateLoaded<T>>(
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
      required final QueryResult<Object?> result}) = _$_QueryStateLoaded<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_QueryStateLoadedCopyWith<T, _$_QueryStateLoaded<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryStateRefetchCopyWith<T, $Res> {
  factory _$$_QueryStateRefetchCopyWith(_$_QueryStateRefetch<T> value,
          $Res Function(_$_QueryStateRefetch<T>) then) =
      __$$_QueryStateRefetchCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, QueryResult<Object?>? result});
}

/// @nodoc
class __$$_QueryStateRefetchCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$_QueryStateRefetch<T>>
    implements _$$_QueryStateRefetchCopyWith<T, $Res> {
  __$$_QueryStateRefetchCopyWithImpl(_$_QueryStateRefetch<T> _value,
      $Res Function(_$_QueryStateRefetch<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_QueryStateRefetch<T>(
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

class _$_QueryStateRefetch<T> implements _QueryStateRefetch<T> {
  const _$_QueryStateRefetch({this.data, this.result});

  @override
  final T? data;
  @override
  final QueryResult<Object?>? result;

  @override
  String toString() {
    return 'QueryState<$T>.refetch(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryStateRefetch<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryStateRefetchCopyWith<T, _$_QueryStateRefetch<T>> get copyWith =>
      __$$_QueryStateRefetchCopyWithImpl<T, _$_QueryStateRefetch<T>>(
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
      final QueryResult<Object?>? result}) = _$_QueryStateRefetch<T>;

  T? get data;
  QueryResult<Object?>? get result;
  @JsonKey(ignore: true)
  _$$_QueryStateRefetchCopyWith<T, _$_QueryStateRefetch<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QueryStateFetchMoreCopyWith<T, $Res> {
  factory _$$_QueryStateFetchMoreCopyWith(_$_QueryStateFetchMore<T> value,
          $Res Function(_$_QueryStateFetchMore<T>) then) =
      __$$_QueryStateFetchMoreCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?>? result});
}

/// @nodoc
class __$$_QueryStateFetchMoreCopyWithImpl<T, $Res>
    extends _$QueryStateCopyWithImpl<T, $Res, _$_QueryStateFetchMore<T>>
    implements _$$_QueryStateFetchMoreCopyWith<T, $Res> {
  __$$_QueryStateFetchMoreCopyWithImpl(_$_QueryStateFetchMore<T> _value,
      $Res Function(_$_QueryStateFetchMore<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_QueryStateFetchMore<T>(
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

class _$_QueryStateFetchMore<T> implements _QueryStateFetchMore<T> {
  const _$_QueryStateFetchMore({required this.data, this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?>? result;

  @override
  String toString() {
    return 'QueryState<$T>.fetchMore(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryStateFetchMore<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryStateFetchMoreCopyWith<T, _$_QueryStateFetchMore<T>> get copyWith =>
      __$$_QueryStateFetchMoreCopyWithImpl<T, _$_QueryStateFetchMore<T>>(
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
      final QueryResult<Object?>? result}) = _$_QueryStateFetchMore<T>;

  T get data;
  QueryResult<Object?>? get result;
  @JsonKey(ignore: true)
  _$$_QueryStateFetchMoreCopyWith<T, _$_QueryStateFetchMore<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
