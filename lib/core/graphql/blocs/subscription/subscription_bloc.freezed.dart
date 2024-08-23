// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions options) run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(SubscriptionOptions options)? run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(SubscriptionOptions options)? run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEventError<T> value) error,
    required TResult Function(_SubscriptionEventRun<T> value) run,
    required TResult Function(_SubscriptionEventLoading<T> value) loading,
    required TResult Function(_SubscriptionEventLoaded<T> value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEventError<T> value)? error,
    TResult? Function(_SubscriptionEventRun<T> value)? run,
    TResult? Function(_SubscriptionEventLoading<T> value)? loading,
    TResult? Function(_SubscriptionEventLoaded<T> value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEventError<T> value)? error,
    TResult Function(_SubscriptionEventRun<T> value)? run,
    TResult Function(_SubscriptionEventLoading<T> value)? loading,
    TResult Function(_SubscriptionEventLoaded<T> value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<T, $Res> {
  factory $SubscriptionEventCopyWith(SubscriptionEvent<T> value,
          $Res Function(SubscriptionEvent<T>) then) =
      _$SubscriptionEventCopyWithImpl<T, $Res, SubscriptionEvent<T>>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<T, $Res,
        $Val extends SubscriptionEvent<T>>
    implements $SubscriptionEventCopyWith<T, $Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscriptionEventErrorImplCopyWith<T, $Res> {
  factory _$$SubscriptionEventErrorImplCopyWith(
          _$SubscriptionEventErrorImpl<T> value,
          $Res Function(_$SubscriptionEventErrorImpl<T>) then) =
      __$$SubscriptionEventErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result, T? data});
}

/// @nodoc
class __$$SubscriptionEventErrorImplCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$SubscriptionEventErrorImpl<T>>
    implements _$$SubscriptionEventErrorImplCopyWith<T, $Res> {
  __$$SubscriptionEventErrorImplCopyWithImpl(
      _$SubscriptionEventErrorImpl<T> _value,
      $Res Function(_$SubscriptionEventErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? result = null,
    Object? data = freezed,
  }) {
    return _then(_$SubscriptionEventErrorImpl<T>(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OperationException,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SubscriptionEventErrorImpl<T> implements _SubscriptionEventError<T> {
  const _$SubscriptionEventErrorImpl(
      {required this.error, required this.result, this.data});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;
  @override
  final T? data;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.error(error: $error, result: $result, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionEventErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      result,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionEventErrorImplCopyWith<T, _$SubscriptionEventErrorImpl<T>>
      get copyWith => __$$SubscriptionEventErrorImplCopyWithImpl<T,
          _$SubscriptionEventErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions options) run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return error(this.error, result, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(SubscriptionOptions options)? run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return error?.call(this.error, result, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(SubscriptionOptions options)? run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, result, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEventError<T> value) error,
    required TResult Function(_SubscriptionEventRun<T> value) run,
    required TResult Function(_SubscriptionEventLoading<T> value) loading,
    required TResult Function(_SubscriptionEventLoaded<T> value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEventError<T> value)? error,
    TResult? Function(_SubscriptionEventRun<T> value)? run,
    TResult? Function(_SubscriptionEventLoading<T> value)? loading,
    TResult? Function(_SubscriptionEventLoaded<T> value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEventError<T> value)? error,
    TResult Function(_SubscriptionEventRun<T> value)? run,
    TResult Function(_SubscriptionEventLoading<T> value)? loading,
    TResult Function(_SubscriptionEventLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEventError<T> implements SubscriptionEvent<T> {
  const factory _SubscriptionEventError(
      {required final OperationException error,
      required final QueryResult<Object?> result,
      final T? data}) = _$SubscriptionEventErrorImpl<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  T? get data;
  @JsonKey(ignore: true)
  _$$SubscriptionEventErrorImplCopyWith<T, _$SubscriptionEventErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionEventRunImplCopyWith<T, $Res> {
  factory _$$SubscriptionEventRunImplCopyWith(
          _$SubscriptionEventRunImpl<T> value,
          $Res Function(_$SubscriptionEventRunImpl<T>) then) =
      __$$SubscriptionEventRunImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SubscriptionOptions options});
}

/// @nodoc
class __$$SubscriptionEventRunImplCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$SubscriptionEventRunImpl<T>>
    implements _$$SubscriptionEventRunImplCopyWith<T, $Res> {
  __$$SubscriptionEventRunImplCopyWithImpl(_$SubscriptionEventRunImpl<T> _value,
      $Res Function(_$SubscriptionEventRunImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = freezed,
  }) {
    return _then(_$SubscriptionEventRunImpl<T>(
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as SubscriptionOptions,
    ));
  }
}

/// @nodoc

class _$SubscriptionEventRunImpl<T> implements _SubscriptionEventRun<T> {
  const _$SubscriptionEventRunImpl({required this.options});

  @override
  final SubscriptionOptions options;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.run(options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionEventRunImpl<T> &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionEventRunImplCopyWith<T, _$SubscriptionEventRunImpl<T>>
      get copyWith => __$$SubscriptionEventRunImplCopyWithImpl<T,
          _$SubscriptionEventRunImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions options) run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return run(options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(SubscriptionOptions options)? run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return run?.call(options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(SubscriptionOptions options)? run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEventError<T> value) error,
    required TResult Function(_SubscriptionEventRun<T> value) run,
    required TResult Function(_SubscriptionEventLoading<T> value) loading,
    required TResult Function(_SubscriptionEventLoaded<T> value) loaded,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEventError<T> value)? error,
    TResult? Function(_SubscriptionEventRun<T> value)? run,
    TResult? Function(_SubscriptionEventLoading<T> value)? loading,
    TResult? Function(_SubscriptionEventLoaded<T> value)? loaded,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEventError<T> value)? error,
    TResult Function(_SubscriptionEventRun<T> value)? run,
    TResult Function(_SubscriptionEventLoading<T> value)? loading,
    TResult Function(_SubscriptionEventLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEventRun<T> implements SubscriptionEvent<T> {
  const factory _SubscriptionEventRun(
          {required final SubscriptionOptions options}) =
      _$SubscriptionEventRunImpl<T>;

  SubscriptionOptions get options;
  @JsonKey(ignore: true)
  _$$SubscriptionEventRunImplCopyWith<T, _$SubscriptionEventRunImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionEventLoadingImplCopyWith<T, $Res> {
  factory _$$SubscriptionEventLoadingImplCopyWith(
          _$SubscriptionEventLoadingImpl<T> value,
          $Res Function(_$SubscriptionEventLoadingImpl<T>) then) =
      __$$SubscriptionEventLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$SubscriptionEventLoadingImplCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$SubscriptionEventLoadingImpl<T>>
    implements _$$SubscriptionEventLoadingImplCopyWith<T, $Res> {
  __$$SubscriptionEventLoadingImplCopyWithImpl(
      _$SubscriptionEventLoadingImpl<T> _value,
      $Res Function(_$SubscriptionEventLoadingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SubscriptionEventLoadingImpl<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$SubscriptionEventLoadingImpl<T>
    implements _SubscriptionEventLoading<T> {
  const _$SubscriptionEventLoadingImpl({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionEventLoadingImpl<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionEventLoadingImplCopyWith<T, _$SubscriptionEventLoadingImpl<T>>
      get copyWith => __$$SubscriptionEventLoadingImplCopyWithImpl<T,
          _$SubscriptionEventLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions options) run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return loading(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(SubscriptionOptions options)? run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return loading?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(SubscriptionOptions options)? run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
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
    required TResult Function(_SubscriptionEventError<T> value) error,
    required TResult Function(_SubscriptionEventRun<T> value) run,
    required TResult Function(_SubscriptionEventLoading<T> value) loading,
    required TResult Function(_SubscriptionEventLoaded<T> value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEventError<T> value)? error,
    TResult? Function(_SubscriptionEventRun<T> value)? run,
    TResult? Function(_SubscriptionEventLoading<T> value)? loading,
    TResult? Function(_SubscriptionEventLoaded<T> value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEventError<T> value)? error,
    TResult Function(_SubscriptionEventRun<T> value)? run,
    TResult Function(_SubscriptionEventLoading<T> value)? loading,
    TResult Function(_SubscriptionEventLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEventLoading<T> implements SubscriptionEvent<T> {
  const factory _SubscriptionEventLoading(
          {required final QueryResult<Object?> result}) =
      _$SubscriptionEventLoadingImpl<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$SubscriptionEventLoadingImplCopyWith<T, _$SubscriptionEventLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionEventLoadedImplCopyWith<T, $Res> {
  factory _$$SubscriptionEventLoadedImplCopyWith(
          _$SubscriptionEventLoadedImpl<T> value,
          $Res Function(_$SubscriptionEventLoadedImpl<T>) then) =
      __$$SubscriptionEventLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, QueryResult<Object?> result});
}

/// @nodoc
class __$$SubscriptionEventLoadedImplCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$SubscriptionEventLoadedImpl<T>>
    implements _$$SubscriptionEventLoadedImplCopyWith<T, $Res> {
  __$$SubscriptionEventLoadedImplCopyWithImpl(
      _$SubscriptionEventLoadedImpl<T> _value,
      $Res Function(_$SubscriptionEventLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$SubscriptionEventLoadedImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$SubscriptionEventLoadedImpl<T> implements _SubscriptionEventLoaded<T> {
  const _$SubscriptionEventLoadedImpl(
      {required this.data, required this.result});

  @override
  final T? data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionEventLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionEventLoadedImplCopyWith<T, _$SubscriptionEventLoadedImpl<T>>
      get copyWith => __$$SubscriptionEventLoadedImplCopyWithImpl<T,
          _$SubscriptionEventLoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions options) run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return loaded(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(SubscriptionOptions options)? run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return loaded?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(SubscriptionOptions options)? run,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
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
    required TResult Function(_SubscriptionEventError<T> value) error,
    required TResult Function(_SubscriptionEventRun<T> value) run,
    required TResult Function(_SubscriptionEventLoading<T> value) loading,
    required TResult Function(_SubscriptionEventLoaded<T> value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEventError<T> value)? error,
    TResult? Function(_SubscriptionEventRun<T> value)? run,
    TResult? Function(_SubscriptionEventLoading<T> value)? loading,
    TResult? Function(_SubscriptionEventLoaded<T> value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEventError<T> value)? error,
    TResult Function(_SubscriptionEventRun<T> value)? run,
    TResult Function(_SubscriptionEventLoading<T> value)? loading,
    TResult Function(_SubscriptionEventLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEventLoaded<T> implements SubscriptionEvent<T> {
  const factory _SubscriptionEventLoaded(
          {required final T? data,
          required final QueryResult<Object?> result}) =
      _$SubscriptionEventLoadedImpl<T>;

  T? get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$SubscriptionEventLoadedImplCopyWith<T, _$SubscriptionEventLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionStateInitial<T> value) initial,
    required TResult Function(_SubscriptionStateLoading<T> value) loading,
    required TResult Function(_SubscriptionStateError<T> value) error,
    required TResult Function(_SubscriptionStateLoaded<T> value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionStateInitial<T> value)? initial,
    TResult? Function(_SubscriptionStateLoading<T> value)? loading,
    TResult? Function(_SubscriptionStateError<T> value)? error,
    TResult? Function(_SubscriptionStateLoaded<T> value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionStateInitial<T> value)? initial,
    TResult Function(_SubscriptionStateLoading<T> value)? loading,
    TResult Function(_SubscriptionStateError<T> value)? error,
    TResult Function(_SubscriptionStateLoaded<T> value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<T, $Res> {
  factory $SubscriptionStateCopyWith(SubscriptionState<T> value,
          $Res Function(SubscriptionState<T>) then) =
      _$SubscriptionStateCopyWithImpl<T, $Res, SubscriptionState<T>>;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<T, $Res,
        $Val extends SubscriptionState<T>>
    implements $SubscriptionStateCopyWith<T, $Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscriptionStateInitialImplCopyWith<T, $Res> {
  factory _$$SubscriptionStateInitialImplCopyWith(
          _$SubscriptionStateInitialImpl<T> value,
          $Res Function(_$SubscriptionStateInitialImpl<T>) then) =
      __$$SubscriptionStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SubscriptionStateInitialImplCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$SubscriptionStateInitialImpl<T>>
    implements _$$SubscriptionStateInitialImplCopyWith<T, $Res> {
  __$$SubscriptionStateInitialImplCopyWithImpl(
      _$SubscriptionStateInitialImpl<T> _value,
      $Res Function(_$SubscriptionStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscriptionStateInitialImpl<T>
    implements _SubscriptionStateInitial<T> {
  const _$SubscriptionStateInitialImpl();

  @override
  String toString() {
    return 'SubscriptionState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
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
    required TResult Function(_SubscriptionStateInitial<T> value) initial,
    required TResult Function(_SubscriptionStateLoading<T> value) loading,
    required TResult Function(_SubscriptionStateError<T> value) error,
    required TResult Function(_SubscriptionStateLoaded<T> value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionStateInitial<T> value)? initial,
    TResult? Function(_SubscriptionStateLoading<T> value)? loading,
    TResult? Function(_SubscriptionStateError<T> value)? error,
    TResult? Function(_SubscriptionStateLoaded<T> value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionStateInitial<T> value)? initial,
    TResult Function(_SubscriptionStateLoading<T> value)? loading,
    TResult Function(_SubscriptionStateError<T> value)? error,
    TResult Function(_SubscriptionStateLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionStateInitial<T> implements SubscriptionState<T> {
  const factory _SubscriptionStateInitial() = _$SubscriptionStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$SubscriptionStateLoadingImplCopyWith<T, $Res> {
  factory _$$SubscriptionStateLoadingImplCopyWith(
          _$SubscriptionStateLoadingImpl<T> value,
          $Res Function(_$SubscriptionStateLoadingImpl<T>) then) =
      __$$SubscriptionStateLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$SubscriptionStateLoadingImplCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$SubscriptionStateLoadingImpl<T>>
    implements _$$SubscriptionStateLoadingImplCopyWith<T, $Res> {
  __$$SubscriptionStateLoadingImplCopyWithImpl(
      _$SubscriptionStateLoadingImpl<T> _value,
      $Res Function(_$SubscriptionStateLoadingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SubscriptionStateLoadingImpl<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateLoadingImpl<T>
    implements _SubscriptionStateLoading<T> {
  const _$SubscriptionStateLoadingImpl({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionState<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateLoadingImpl<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateLoadingImplCopyWith<T, _$SubscriptionStateLoadingImpl<T>>
      get copyWith => __$$SubscriptionStateLoadingImplCopyWithImpl<T,
          _$SubscriptionStateLoadingImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return loading(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return loading?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
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
    required TResult Function(_SubscriptionStateInitial<T> value) initial,
    required TResult Function(_SubscriptionStateLoading<T> value) loading,
    required TResult Function(_SubscriptionStateError<T> value) error,
    required TResult Function(_SubscriptionStateLoaded<T> value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionStateInitial<T> value)? initial,
    TResult? Function(_SubscriptionStateLoading<T> value)? loading,
    TResult? Function(_SubscriptionStateError<T> value)? error,
    TResult? Function(_SubscriptionStateLoaded<T> value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionStateInitial<T> value)? initial,
    TResult Function(_SubscriptionStateLoading<T> value)? loading,
    TResult Function(_SubscriptionStateError<T> value)? error,
    TResult Function(_SubscriptionStateLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionStateLoading<T> implements SubscriptionState<T> {
  const factory _SubscriptionStateLoading(
          {required final QueryResult<Object?> result}) =
      _$SubscriptionStateLoadingImpl<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$SubscriptionStateLoadingImplCopyWith<T, _$SubscriptionStateLoadingImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionStateErrorImplCopyWith<T, $Res> {
  factory _$$SubscriptionStateErrorImplCopyWith(
          _$SubscriptionStateErrorImpl<T> value,
          $Res Function(_$SubscriptionStateErrorImpl<T>) then) =
      __$$SubscriptionStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result, T? data});
}

/// @nodoc
class __$$SubscriptionStateErrorImplCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$SubscriptionStateErrorImpl<T>>
    implements _$$SubscriptionStateErrorImplCopyWith<T, $Res> {
  __$$SubscriptionStateErrorImplCopyWithImpl(
      _$SubscriptionStateErrorImpl<T> _value,
      $Res Function(_$SubscriptionStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? result = null,
    Object? data = freezed,
  }) {
    return _then(_$SubscriptionStateErrorImpl<T>(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as OperationException,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateErrorImpl<T> implements _SubscriptionStateError<T> {
  const _$SubscriptionStateErrorImpl(
      {required this.error, required this.result, this.data});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;
  @override
  final T? data;

  @override
  String toString() {
    return 'SubscriptionState<$T>.error(error: $error, result: $result, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      result,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateErrorImplCopyWith<T, _$SubscriptionStateErrorImpl<T>>
      get copyWith => __$$SubscriptionStateErrorImplCopyWithImpl<T,
          _$SubscriptionStateErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return error(this.error, result, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return error?.call(this.error, result, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, result, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionStateInitial<T> value) initial,
    required TResult Function(_SubscriptionStateLoading<T> value) loading,
    required TResult Function(_SubscriptionStateError<T> value) error,
    required TResult Function(_SubscriptionStateLoaded<T> value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionStateInitial<T> value)? initial,
    TResult? Function(_SubscriptionStateLoading<T> value)? loading,
    TResult? Function(_SubscriptionStateError<T> value)? error,
    TResult? Function(_SubscriptionStateLoaded<T> value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionStateInitial<T> value)? initial,
    TResult Function(_SubscriptionStateLoading<T> value)? loading,
    TResult Function(_SubscriptionStateError<T> value)? error,
    TResult Function(_SubscriptionStateLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionStateError<T> implements SubscriptionState<T> {
  const factory _SubscriptionStateError(
      {required final OperationException error,
      required final QueryResult<Object?> result,
      final T? data}) = _$SubscriptionStateErrorImpl<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  T? get data;
  @JsonKey(ignore: true)
  _$$SubscriptionStateErrorImplCopyWith<T, _$SubscriptionStateErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionStateLoadedImplCopyWith<T, $Res> {
  factory _$$SubscriptionStateLoadedImplCopyWith(
          _$SubscriptionStateLoadedImpl<T> value,
          $Res Function(_$SubscriptionStateLoadedImpl<T>) then) =
      __$$SubscriptionStateLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, QueryResult<Object?> result});
}

/// @nodoc
class __$$SubscriptionStateLoadedImplCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$SubscriptionStateLoadedImpl<T>>
    implements _$$SubscriptionStateLoadedImplCopyWith<T, $Res> {
  __$$SubscriptionStateLoadedImplCopyWithImpl(
      _$SubscriptionStateLoadedImpl<T> _value,
      $Res Function(_$SubscriptionStateLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$SubscriptionStateLoadedImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateLoadedImpl<T> implements _SubscriptionStateLoaded<T> {
  const _$SubscriptionStateLoadedImpl({this.data, required this.result});

  @override
  final T? data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionState<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionStateLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionStateLoadedImplCopyWith<T, _$SubscriptionStateLoadedImpl<T>>
      get copyWith => __$$SubscriptionStateLoadedImplCopyWithImpl<T,
          _$SubscriptionStateLoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) {
    return loaded(data, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) {
    return loaded?.call(data, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QueryResult<Object?> result)? loading,
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(T? data, QueryResult<Object?> result)? loaded,
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
    required TResult Function(_SubscriptionStateInitial<T> value) initial,
    required TResult Function(_SubscriptionStateLoading<T> value) loading,
    required TResult Function(_SubscriptionStateError<T> value) error,
    required TResult Function(_SubscriptionStateLoaded<T> value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionStateInitial<T> value)? initial,
    TResult? Function(_SubscriptionStateLoading<T> value)? loading,
    TResult? Function(_SubscriptionStateError<T> value)? error,
    TResult? Function(_SubscriptionStateLoaded<T> value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionStateInitial<T> value)? initial,
    TResult Function(_SubscriptionStateLoading<T> value)? loading,
    TResult Function(_SubscriptionStateError<T> value)? error,
    TResult Function(_SubscriptionStateLoaded<T> value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionStateLoaded<T> implements SubscriptionState<T> {
  const factory _SubscriptionStateLoaded(
          {final T? data, required final QueryResult<Object?> result}) =
      _$SubscriptionStateLoadedImpl<T>;

  T? get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$SubscriptionStateLoadedImplCopyWith<T, _$SubscriptionStateLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
