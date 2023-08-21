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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscriptionEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions<Object?> options) run,
    required TResult Function(QueryResult<Object?> result) loading,
    required TResult Function(T? data, QueryResult<Object?> result) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult? Function(SubscriptionOptions<Object?> options)? run,
    TResult? Function(QueryResult<Object?> result)? loading,
    TResult? Function(T? data, QueryResult<Object?> result)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)?
        error,
    TResult Function(SubscriptionOptions<Object?> options)? run,
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
abstract class _$$_SubscriptionEventErrorCopyWith<T, $Res> {
  factory _$$_SubscriptionEventErrorCopyWith(_$_SubscriptionEventError<T> value,
          $Res Function(_$_SubscriptionEventError<T>) then) =
      __$$_SubscriptionEventErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result, T? data});
}

/// @nodoc
class __$$_SubscriptionEventErrorCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$_SubscriptionEventError<T>>
    implements _$$_SubscriptionEventErrorCopyWith<T, $Res> {
  __$$_SubscriptionEventErrorCopyWithImpl(_$_SubscriptionEventError<T> _value,
      $Res Function(_$_SubscriptionEventError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? result = null,
    Object? data = freezed,
  }) {
    return _then(_$_SubscriptionEventError<T>(
      error: null == error
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

class _$_SubscriptionEventError<T> implements _SubscriptionEventError<T> {
  const _$_SubscriptionEventError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionEventError<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, result, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionEventErrorCopyWith<T, _$_SubscriptionEventError<T>>
      get copyWith => __$$_SubscriptionEventErrorCopyWithImpl<T,
          _$_SubscriptionEventError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions<Object?> options) run,
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
    TResult? Function(SubscriptionOptions<Object?> options)? run,
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
    TResult Function(SubscriptionOptions<Object?> options)? run,
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
      final T? data}) = _$_SubscriptionEventError<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  T? get data;
  @JsonKey(ignore: true)
  _$$_SubscriptionEventErrorCopyWith<T, _$_SubscriptionEventError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubscriptionEventRunCopyWith<T, $Res> {
  factory _$$_SubscriptionEventRunCopyWith(_$_SubscriptionEventRun<T> value,
          $Res Function(_$_SubscriptionEventRun<T>) then) =
      __$$_SubscriptionEventRunCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SubscriptionOptions<Object?> options});
}

/// @nodoc
class __$$_SubscriptionEventRunCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res, _$_SubscriptionEventRun<T>>
    implements _$$_SubscriptionEventRunCopyWith<T, $Res> {
  __$$_SubscriptionEventRunCopyWithImpl(_$_SubscriptionEventRun<T> _value,
      $Res Function(_$_SubscriptionEventRun<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
  }) {
    return _then(_$_SubscriptionEventRun<T>(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as SubscriptionOptions<Object?>,
    ));
  }
}

/// @nodoc

class _$_SubscriptionEventRun<T> implements _SubscriptionEventRun<T> {
  const _$_SubscriptionEventRun({required this.options});

  @override
  final SubscriptionOptions<Object?> options;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.run(options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionEventRun<T> &&
            (identical(other.options, options) || other.options == options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionEventRunCopyWith<T, _$_SubscriptionEventRun<T>>
      get copyWith =>
          __$$_SubscriptionEventRunCopyWithImpl<T, _$_SubscriptionEventRun<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions<Object?> options) run,
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
    TResult? Function(SubscriptionOptions<Object?> options)? run,
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
    TResult Function(SubscriptionOptions<Object?> options)? run,
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
          {required final SubscriptionOptions<Object?> options}) =
      _$_SubscriptionEventRun<T>;

  SubscriptionOptions<Object?> get options;
  @JsonKey(ignore: true)
  _$$_SubscriptionEventRunCopyWith<T, _$_SubscriptionEventRun<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubscriptionEventLoadingCopyWith<T, $Res> {
  factory _$$_SubscriptionEventLoadingCopyWith(
          _$_SubscriptionEventLoading<T> value,
          $Res Function(_$_SubscriptionEventLoading<T>) then) =
      __$$_SubscriptionEventLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$_SubscriptionEventLoadingCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$_SubscriptionEventLoading<T>>
    implements _$$_SubscriptionEventLoadingCopyWith<T, $Res> {
  __$$_SubscriptionEventLoadingCopyWithImpl(
      _$_SubscriptionEventLoading<T> _value,
      $Res Function(_$_SubscriptionEventLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_SubscriptionEventLoading<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$_SubscriptionEventLoading<T> implements _SubscriptionEventLoading<T> {
  const _$_SubscriptionEventLoading({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionEventLoading<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionEventLoadingCopyWith<T, _$_SubscriptionEventLoading<T>>
      get copyWith => __$$_SubscriptionEventLoadingCopyWithImpl<T,
          _$_SubscriptionEventLoading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions<Object?> options) run,
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
    TResult? Function(SubscriptionOptions<Object?> options)? run,
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
    TResult Function(SubscriptionOptions<Object?> options)? run,
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
      _$_SubscriptionEventLoading<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_SubscriptionEventLoadingCopyWith<T, _$_SubscriptionEventLoading<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubscriptionEventLoadedCopyWith<T, $Res> {
  factory _$$_SubscriptionEventLoadedCopyWith(
          _$_SubscriptionEventLoaded<T> value,
          $Res Function(_$_SubscriptionEventLoaded<T>) then) =
      __$$_SubscriptionEventLoadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, QueryResult<Object?> result});
}

/// @nodoc
class __$$_SubscriptionEventLoadedCopyWithImpl<T, $Res>
    extends _$SubscriptionEventCopyWithImpl<T, $Res,
        _$_SubscriptionEventLoaded<T>>
    implements _$$_SubscriptionEventLoadedCopyWith<T, $Res> {
  __$$_SubscriptionEventLoadedCopyWithImpl(_$_SubscriptionEventLoaded<T> _value,
      $Res Function(_$_SubscriptionEventLoaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$_SubscriptionEventLoaded<T>(
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

class _$_SubscriptionEventLoaded<T> implements _SubscriptionEventLoaded<T> {
  const _$_SubscriptionEventLoaded({required this.data, required this.result});

  @override
  final T? data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionEvent<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionEventLoaded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionEventLoadedCopyWith<T, _$_SubscriptionEventLoaded<T>>
      get copyWith => __$$_SubscriptionEventLoadedCopyWithImpl<T,
          _$_SubscriptionEventLoaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            OperationException error, QueryResult<Object?> result, T? data)
        error,
    required TResult Function(SubscriptionOptions<Object?> options) run,
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
    TResult? Function(SubscriptionOptions<Object?> options)? run,
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
    TResult Function(SubscriptionOptions<Object?> options)? run,
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
      _$_SubscriptionEventLoaded<T>;

  T? get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_SubscriptionEventLoadedCopyWith<T, _$_SubscriptionEventLoaded<T>>
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
abstract class _$$_SubscriptionStateInitialCopyWith<T, $Res> {
  factory _$$_SubscriptionStateInitialCopyWith(
          _$_SubscriptionStateInitial<T> value,
          $Res Function(_$_SubscriptionStateInitial<T>) then) =
      __$$_SubscriptionStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_SubscriptionStateInitialCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$_SubscriptionStateInitial<T>>
    implements _$$_SubscriptionStateInitialCopyWith<T, $Res> {
  __$$_SubscriptionStateInitialCopyWithImpl(
      _$_SubscriptionStateInitial<T> _value,
      $Res Function(_$_SubscriptionStateInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubscriptionStateInitial<T> implements _SubscriptionStateInitial<T> {
  const _$_SubscriptionStateInitial();

  @override
  String toString() {
    return 'SubscriptionState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionStateInitial<T>);
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
  const factory _SubscriptionStateInitial() = _$_SubscriptionStateInitial<T>;
}

/// @nodoc
abstract class _$$_SubscriptionStateLoadingCopyWith<T, $Res> {
  factory _$$_SubscriptionStateLoadingCopyWith(
          _$_SubscriptionStateLoading<T> value,
          $Res Function(_$_SubscriptionStateLoading<T>) then) =
      __$$_SubscriptionStateLoadingCopyWithImpl<T, $Res>;
  @useResult
  $Res call({QueryResult<Object?> result});
}

/// @nodoc
class __$$_SubscriptionStateLoadingCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$_SubscriptionStateLoading<T>>
    implements _$$_SubscriptionStateLoadingCopyWith<T, $Res> {
  __$$_SubscriptionStateLoadingCopyWithImpl(
      _$_SubscriptionStateLoading<T> _value,
      $Res Function(_$_SubscriptionStateLoading<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_SubscriptionStateLoading<T>(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as QueryResult<Object?>,
    ));
  }
}

/// @nodoc

class _$_SubscriptionStateLoading<T> implements _SubscriptionStateLoading<T> {
  const _$_SubscriptionStateLoading({required this.result});

  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionState<$T>.loading(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionStateLoading<T> &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionStateLoadingCopyWith<T, _$_SubscriptionStateLoading<T>>
      get copyWith => __$$_SubscriptionStateLoadingCopyWithImpl<T,
          _$_SubscriptionStateLoading<T>>(this, _$identity);

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
      _$_SubscriptionStateLoading<T>;

  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_SubscriptionStateLoadingCopyWith<T, _$_SubscriptionStateLoading<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubscriptionStateErrorCopyWith<T, $Res> {
  factory _$$_SubscriptionStateErrorCopyWith(_$_SubscriptionStateError<T> value,
          $Res Function(_$_SubscriptionStateError<T>) then) =
      __$$_SubscriptionStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result, T? data});
}

/// @nodoc
class __$$_SubscriptionStateErrorCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$_SubscriptionStateError<T>>
    implements _$$_SubscriptionStateErrorCopyWith<T, $Res> {
  __$$_SubscriptionStateErrorCopyWithImpl(_$_SubscriptionStateError<T> _value,
      $Res Function(_$_SubscriptionStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? result = null,
    Object? data = freezed,
  }) {
    return _then(_$_SubscriptionStateError<T>(
      error: null == error
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

class _$_SubscriptionStateError<T> implements _SubscriptionStateError<T> {
  const _$_SubscriptionStateError(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionStateError<T> &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, result, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionStateErrorCopyWith<T, _$_SubscriptionStateError<T>>
      get copyWith => __$$_SubscriptionStateErrorCopyWithImpl<T,
          _$_SubscriptionStateError<T>>(this, _$identity);

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
      final T? data}) = _$_SubscriptionStateError<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  T? get data;
  @JsonKey(ignore: true)
  _$$_SubscriptionStateErrorCopyWith<T, _$_SubscriptionStateError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubscriptionStateLoadedCopyWith<T, $Res> {
  factory _$$_SubscriptionStateLoadedCopyWith(
          _$_SubscriptionStateLoaded<T> value,
          $Res Function(_$_SubscriptionStateLoaded<T>) then) =
      __$$_SubscriptionStateLoadedCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, QueryResult<Object?> result});
}

/// @nodoc
class __$$_SubscriptionStateLoadedCopyWithImpl<T, $Res>
    extends _$SubscriptionStateCopyWithImpl<T, $Res,
        _$_SubscriptionStateLoaded<T>>
    implements _$$_SubscriptionStateLoadedCopyWith<T, $Res> {
  __$$_SubscriptionStateLoadedCopyWithImpl(_$_SubscriptionStateLoaded<T> _value,
      $Res Function(_$_SubscriptionStateLoaded<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$_SubscriptionStateLoaded<T>(
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

class _$_SubscriptionStateLoaded<T> implements _SubscriptionStateLoaded<T> {
  const _$_SubscriptionStateLoaded({this.data, required this.result});

  @override
  final T? data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'SubscriptionState<$T>.loaded(data: $data, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionStateLoaded<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionStateLoadedCopyWith<T, _$_SubscriptionStateLoaded<T>>
      get copyWith => __$$_SubscriptionStateLoadedCopyWithImpl<T,
          _$_SubscriptionStateLoaded<T>>(this, _$identity);

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
      _$_SubscriptionStateLoaded<T>;

  T? get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$_SubscriptionStateLoadedCopyWith<T, _$_SubscriptionStateLoaded<T>>
      get copyWith => throw _privateConstructorUsedError;
}
