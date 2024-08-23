// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_video_chat_match_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FindVideoChatMatchEvent<T> {
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
    required TResult Function(_Run<T> value) run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Run<T> value)? run,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Run<T> value)? run,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FindVideoChatMatchEventCopyWith<T, FindVideoChatMatchEvent<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindVideoChatMatchEventCopyWith<T, $Res> {
  factory $FindVideoChatMatchEventCopyWith(FindVideoChatMatchEvent<T> value,
          $Res Function(FindVideoChatMatchEvent<T>) then) =
      _$FindVideoChatMatchEventCopyWithImpl<T, $Res,
          FindVideoChatMatchEvent<T>>;
  @useResult
  $Res call({Map<String, dynamic> variables, Object? optimisticResult});
}

/// @nodoc
class _$FindVideoChatMatchEventCopyWithImpl<T, $Res,
        $Val extends FindVideoChatMatchEvent<T>>
    implements $FindVideoChatMatchEventCopyWith<T, $Res> {
  _$FindVideoChatMatchEventCopyWithImpl(this._value, this._then);

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
abstract class _$$RunImplCopyWith<T, $Res>
    implements $FindVideoChatMatchEventCopyWith<T, $Res> {
  factory _$$RunImplCopyWith(
          _$RunImpl<T> value, $Res Function(_$RunImpl<T>) then) =
      __$$RunImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> variables, Object? optimisticResult});
}

/// @nodoc
class __$$RunImplCopyWithImpl<T, $Res>
    extends _$FindVideoChatMatchEventCopyWithImpl<T, $Res, _$RunImpl<T>>
    implements _$$RunImplCopyWith<T, $Res> {
  __$$RunImplCopyWithImpl(
      _$RunImpl<T> _value, $Res Function(_$RunImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variables = null,
    Object? optimisticResult = freezed,
  }) {
    return _then(_$RunImpl<T>(
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

class _$RunImpl<T> implements _Run<T> {
  const _$RunImpl(final Map<String, dynamic> variables, {this.optimisticResult})
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
    return 'FindVideoChatMatchEvent<$T>.run(variables: $variables, optimisticResult: $optimisticResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RunImpl<T> &&
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
  _$$RunImplCopyWith<T, _$RunImpl<T>> get copyWith =>
      __$$RunImplCopyWithImpl<T, _$RunImpl<T>>(this, _$identity);

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
    required TResult Function(_Run<T> value) run,
  }) {
    return run(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Run<T> value)? run,
  }) {
    return run?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Run<T> value)? run,
    required TResult orElse(),
  }) {
    if (run != null) {
      return run(this);
    }
    return orElse();
  }
}

abstract class _Run<T> implements FindVideoChatMatchEvent<T> {
  const factory _Run(final Map<String, dynamic> variables,
      {final Object? optimisticResult}) = _$RunImpl<T>;

  @override
  Map<String, dynamic> get variables;
  @override
  Object? get optimisticResult;
  @override
  @JsonKey(ignore: true)
  _$$RunImplCopyWith<T, _$RunImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FindVideoChatMatchState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() polling,
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
    TResult? Function()? polling,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? polling,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Polling<T> value) polling,
    required TResult Function(_Succeeded<T> value) succeeded,
    required TResult Function(_Failed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Polling<T> value)? polling,
    TResult? Function(_Succeeded<T> value)? succeeded,
    TResult? Function(_Failed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Polling<T> value)? polling,
    TResult Function(_Succeeded<T> value)? succeeded,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindVideoChatMatchStateCopyWith<T, $Res> {
  factory $FindVideoChatMatchStateCopyWith(FindVideoChatMatchState<T> value,
          $Res Function(FindVideoChatMatchState<T>) then) =
      _$FindVideoChatMatchStateCopyWithImpl<T, $Res,
          FindVideoChatMatchState<T>>;
}

/// @nodoc
class _$FindVideoChatMatchStateCopyWithImpl<T, $Res,
        $Val extends FindVideoChatMatchState<T>>
    implements $FindVideoChatMatchStateCopyWith<T, $Res> {
  _$FindVideoChatMatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$FindVideoChatMatchStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FindVideoChatMatchState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() polling,
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
    TResult? Function()? polling,
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
    TResult Function()? polling,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Polling<T> value) polling,
    required TResult Function(_Succeeded<T> value) succeeded,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Polling<T> value)? polling,
    TResult? Function(_Succeeded<T> value)? succeeded,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Polling<T> value)? polling,
    TResult Function(_Succeeded<T> value)? succeeded,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements FindVideoChatMatchState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$FindVideoChatMatchStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements _Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FindVideoChatMatchState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() polling,
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
    TResult? Function()? polling,
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
    TResult Function()? polling,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Polling<T> value) polling,
    required TResult Function(_Succeeded<T> value) succeeded,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Polling<T> value)? polling,
    TResult? Function(_Succeeded<T> value)? succeeded,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Polling<T> value)? polling,
    TResult Function(_Succeeded<T> value)? succeeded,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements FindVideoChatMatchState<T> {
  const factory _Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$PollingImplCopyWith<T, $Res> {
  factory _$$PollingImplCopyWith(
          _$PollingImpl<T> value, $Res Function(_$PollingImpl<T>) then) =
      __$$PollingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PollingImplCopyWithImpl<T, $Res>
    extends _$FindVideoChatMatchStateCopyWithImpl<T, $Res, _$PollingImpl<T>>
    implements _$$PollingImplCopyWith<T, $Res> {
  __$$PollingImplCopyWithImpl(
      _$PollingImpl<T> _value, $Res Function(_$PollingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PollingImpl<T> implements _Polling<T> {
  const _$PollingImpl();

  @override
  String toString() {
    return 'FindVideoChatMatchState<$T>.polling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PollingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() polling,
    required TResult Function(T data, QueryResult<Object?> result) succeeded,
    required TResult Function(
            OperationException error, QueryResult<Object?> result)
        failed,
  }) {
    return polling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? polling,
    TResult? Function(T data, QueryResult<Object?> result)? succeeded,
    TResult? Function(OperationException error, QueryResult<Object?> result)?
        failed,
  }) {
    return polling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? polling,
    TResult Function(T data, QueryResult<Object?> result)? succeeded,
    TResult Function(OperationException error, QueryResult<Object?> result)?
        failed,
    required TResult orElse(),
  }) {
    if (polling != null) {
      return polling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Polling<T> value) polling,
    required TResult Function(_Succeeded<T> value) succeeded,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return polling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Polling<T> value)? polling,
    TResult? Function(_Succeeded<T> value)? succeeded,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return polling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Polling<T> value)? polling,
    TResult Function(_Succeeded<T> value)? succeeded,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (polling != null) {
      return polling(this);
    }
    return orElse();
  }
}

abstract class _Polling<T> implements FindVideoChatMatchState<T> {
  const factory _Polling() = _$PollingImpl<T>;
}

/// @nodoc
abstract class _$$SucceededImplCopyWith<T, $Res> {
  factory _$$SucceededImplCopyWith(
          _$SucceededImpl<T> value, $Res Function(_$SucceededImpl<T>) then) =
      __$$SucceededImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, QueryResult<Object?> result});
}

/// @nodoc
class __$$SucceededImplCopyWithImpl<T, $Res>
    extends _$FindVideoChatMatchStateCopyWithImpl<T, $Res, _$SucceededImpl<T>>
    implements _$$SucceededImplCopyWith<T, $Res> {
  __$$SucceededImplCopyWithImpl(
      _$SucceededImpl<T> _value, $Res Function(_$SucceededImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? result = null,
  }) {
    return _then(_$SucceededImpl<T>(
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

class _$SucceededImpl<T> implements _Succeeded<T> {
  const _$SucceededImpl({required this.data, required this.result});

  @override
  final T data;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'FindVideoChatMatchState<$T>.succeeded(data: $data, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceededImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceededImplCopyWith<T, _$SucceededImpl<T>> get copyWith =>
      __$$SucceededImplCopyWithImpl<T, _$SucceededImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() polling,
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
    TResult? Function()? polling,
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
    TResult Function()? polling,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Polling<T> value) polling,
    required TResult Function(_Succeeded<T> value) succeeded,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Polling<T> value)? polling,
    TResult? Function(_Succeeded<T> value)? succeeded,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Polling<T> value)? polling,
    TResult Function(_Succeeded<T> value)? succeeded,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded<T> implements FindVideoChatMatchState<T> {
  const factory _Succeeded(
      {required final T data,
      required final QueryResult<Object?> result}) = _$SucceededImpl<T>;

  T get data;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$SucceededImplCopyWith<T, _$SucceededImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<T, $Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl<T> value, $Res Function(_$FailedImpl<T>) then) =
      __$$FailedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({OperationException error, QueryResult<Object?> result});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<T, $Res>
    extends _$FindVideoChatMatchStateCopyWithImpl<T, $Res, _$FailedImpl<T>>
    implements _$$FailedImplCopyWith<T, $Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl<T> _value, $Res Function(_$FailedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? result = null,
  }) {
    return _then(_$FailedImpl<T>(
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

class _$FailedImpl<T> implements _Failed<T> {
  const _$FailedImpl({required this.error, required this.result});

  @override
  final OperationException error;
  @override
  final QueryResult<Object?> result;

  @override
  String toString() {
    return 'FindVideoChatMatchState<$T>.failed(error: $error, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl<T> &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      __$$FailedImplCopyWithImpl<T, _$FailedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() polling,
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
    TResult? Function()? polling,
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
    TResult Function()? polling,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(_Loading<T> value) loading,
    required TResult Function(_Polling<T> value) polling,
    required TResult Function(_Succeeded<T> value) succeeded,
    required TResult Function(_Failed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(_Loading<T> value)? loading,
    TResult? Function(_Polling<T> value)? polling,
    TResult? Function(_Succeeded<T> value)? succeeded,
    TResult? Function(_Failed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(_Loading<T> value)? loading,
    TResult Function(_Polling<T> value)? polling,
    TResult Function(_Succeeded<T> value)? succeeded,
    TResult Function(_Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed<T> implements FindVideoChatMatchState<T> {
  const factory _Failed(
      {required final OperationException error,
      required final QueryResult<Object?> result}) = _$FailedImpl<T>;

  OperationException get error;
  QueryResult<Object?> get result;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<T, _$FailedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
