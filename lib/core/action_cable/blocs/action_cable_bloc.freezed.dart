// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_cable_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActionCableEvent<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCableEventCopyWith<T, $Res> {
  factory $ActionCableEventCopyWith(
          ActionCableEvent<T> value, $Res Function(ActionCableEvent<T>) then) =
      _$ActionCableEventCopyWithImpl<T, $Res, ActionCableEvent<T>>;
}

/// @nodoc
class _$ActionCableEventCopyWithImpl<T, $Res, $Val extends ActionCableEvent<T>>
    implements $ActionCableEventCopyWith<T, $Res> {
  _$ActionCableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ActionCableEventConnectCopyWith<T, $Res> {
  factory _$$_ActionCableEventConnectCopyWith(
          _$_ActionCableEventConnect<T> value,
          $Res Function(_$_ActionCableEventConnect<T>) then) =
      __$$_ActionCableEventConnectCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableEventConnectCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$_ActionCableEventConnect<T>>
    implements _$$_ActionCableEventConnectCopyWith<T, $Res> {
  __$$_ActionCableEventConnectCopyWithImpl(_$_ActionCableEventConnect<T> _value,
      $Res Function(_$_ActionCableEventConnect<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableEventConnect<T> implements _ActionCableEventConnect<T> {
  const _$_ActionCableEventConnect();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.connect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventConnect<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventConnect<T> implements ActionCableEvent<T> {
  const factory _ActionCableEventConnect() = _$_ActionCableEventConnect<T>;
}

/// @nodoc
abstract class _$$_ActionCableEventDisconnectCopyWith<T, $Res> {
  factory _$$_ActionCableEventDisconnectCopyWith(
          _$_ActionCableEventDisconnect<T> value,
          $Res Function(_$_ActionCableEventDisconnect<T>) then) =
      __$$_ActionCableEventDisconnectCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableEventDisconnectCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$_ActionCableEventDisconnect<T>>
    implements _$$_ActionCableEventDisconnectCopyWith<T, $Res> {
  __$$_ActionCableEventDisconnectCopyWithImpl(
      _$_ActionCableEventDisconnect<T> _value,
      $Res Function(_$_ActionCableEventDisconnect<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableEventDisconnect<T>
    implements _ActionCableEventDisconnect<T> {
  const _$_ActionCableEventDisconnect();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.disconnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventDisconnect<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventDisconnect<T> implements ActionCableEvent<T> {
  const factory _ActionCableEventDisconnect() =
      _$_ActionCableEventDisconnect<T>;
}

/// @nodoc
abstract class _$$_ActionCableEventSubscribeCopyWith<T, $Res> {
  factory _$$_ActionCableEventSubscribeCopyWith(
          _$_ActionCableEventSubscribe<T> value,
          $Res Function(_$_ActionCableEventSubscribe<T>) then) =
      __$$_ActionCableEventSubscribeCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableEventSubscribeCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$_ActionCableEventSubscribe<T>>
    implements _$$_ActionCableEventSubscribeCopyWith<T, $Res> {
  __$$_ActionCableEventSubscribeCopyWithImpl(
      _$_ActionCableEventSubscribe<T> _value,
      $Res Function(_$_ActionCableEventSubscribe<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableEventSubscribe<T> implements _ActionCableEventSubscribe<T> {
  const _$_ActionCableEventSubscribe();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventSubscribe<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventSubscribe<T> implements ActionCableEvent<T> {
  const factory _ActionCableEventSubscribe() = _$_ActionCableEventSubscribe<T>;
}

/// @nodoc
abstract class _$$_ActionCableEventUnsubscribeCopyWith<T, $Res> {
  factory _$$_ActionCableEventUnsubscribeCopyWith(
          _$_ActionCableEventUnsubscribe<T> value,
          $Res Function(_$_ActionCableEventUnsubscribe<T>) then) =
      __$$_ActionCableEventUnsubscribeCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableEventUnsubscribeCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$_ActionCableEventUnsubscribe<T>>
    implements _$$_ActionCableEventUnsubscribeCopyWith<T, $Res> {
  __$$_ActionCableEventUnsubscribeCopyWithImpl(
      _$_ActionCableEventUnsubscribe<T> _value,
      $Res Function(_$_ActionCableEventUnsubscribe<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableEventUnsubscribe<T>
    implements _ActionCableEventUnsubscribe<T> {
  const _$_ActionCableEventUnsubscribe();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.unsubscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventUnsubscribe<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return unsubscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return unsubscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return unsubscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return unsubscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (unsubscribe != null) {
      return unsubscribe(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventUnsubscribe<T> implements ActionCableEvent<T> {
  const factory _ActionCableEventUnsubscribe() =
      _$_ActionCableEventUnsubscribe<T>;
}

/// @nodoc
abstract class _$$_ActionCableEventPerformActionCopyWith<T, $Res> {
  factory _$$_ActionCableEventPerformActionCopyWith(
          _$_ActionCableEventPerformAction<T> value,
          $Res Function(_$_ActionCableEventPerformAction<T>) then) =
      __$$_ActionCableEventPerformActionCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String actionName, Map<String, dynamic> data});
}

/// @nodoc
class __$$_ActionCableEventPerformActionCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$_ActionCableEventPerformAction<T>>
    implements _$$_ActionCableEventPerformActionCopyWith<T, $Res> {
  __$$_ActionCableEventPerformActionCopyWithImpl(
      _$_ActionCableEventPerformAction<T> _value,
      $Res Function(_$_ActionCableEventPerformAction<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionName = null,
    Object? data = null,
  }) {
    return _then(_$_ActionCableEventPerformAction<T>(
      actionName: null == actionName
          ? _value.actionName
          : actionName // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_ActionCableEventPerformAction<T>
    implements _ActionCableEventPerformAction<T> {
  const _$_ActionCableEventPerformAction(
      {required this.actionName, required final Map<String, dynamic> data})
      : _data = data;

  @override
  final String actionName;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ActionCableEvent<$T>.performAction(actionName: $actionName, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventPerformAction<T> &&
            (identical(other.actionName, actionName) ||
                other.actionName == actionName) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, actionName, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCableEventPerformActionCopyWith<T,
          _$_ActionCableEventPerformAction<T>>
      get copyWith => __$$_ActionCableEventPerformActionCopyWithImpl<T,
          _$_ActionCableEventPerformAction<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return performAction(actionName, this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return performAction?.call(actionName, this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (performAction != null) {
      return performAction(actionName, this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return performAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return performAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (performAction != null) {
      return performAction(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventPerformAction<T>
    implements ActionCableEvent<T> {
  const factory _ActionCableEventPerformAction(
          {required final String actionName,
          required final Map<String, dynamic> data}) =
      _$_ActionCableEventPerformAction<T>;

  String get actionName;
  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$_ActionCableEventPerformActionCopyWith<T,
          _$_ActionCableEventPerformAction<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActionCableEventDataCopyWith<T, $Res> {
  factory _$$_ActionCableEventDataCopyWith(_$_ActionCableEventData<T> value,
          $Res Function(_$_ActionCableEventData<T>) then) =
      __$$_ActionCableEventDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_ActionCableEventDataCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res, _$_ActionCableEventData<T>>
    implements _$$_ActionCableEventDataCopyWith<T, $Res> {
  __$$_ActionCableEventDataCopyWithImpl(_$_ActionCableEventData<T> _value,
      $Res Function(_$_ActionCableEventData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ActionCableEventData<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ActionCableEventData<T> implements _ActionCableEventData<T> {
  const _$_ActionCableEventData({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ActionCableEvent<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventData<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCableEventDataCopyWith<T, _$_ActionCableEventData<T>>
      get copyWith =>
          __$$_ActionCableEventDataCopyWithImpl<T, _$_ActionCableEventData<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventData<T> implements ActionCableEvent<T> {
  const factory _ActionCableEventData({required final T data}) =
      _$_ActionCableEventData<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_ActionCableEventDataCopyWith<T, _$_ActionCableEventData<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActionCableEventErrorCopyWith<T, $Res> {
  factory _$$_ActionCableEventErrorCopyWith(_$_ActionCableEventError<T> value,
          $Res Function(_$_ActionCableEventError<T>) then) =
      __$$_ActionCableEventErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ActionCableEventErrorCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res, _$_ActionCableEventError<T>>
    implements _$$_ActionCableEventErrorCopyWith<T, $Res> {
  __$$_ActionCableEventErrorCopyWithImpl(_$_ActionCableEventError<T> _value,
      $Res Function(_$_ActionCableEventError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ActionCableEventError<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ActionCableEventError<T> implements _ActionCableEventError<T> {
  const _$_ActionCableEventError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ActionCableEvent<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableEventError<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCableEventErrorCopyWith<T, _$_ActionCableEventError<T>>
      get copyWith => __$$_ActionCableEventErrorCopyWithImpl<T,
          _$_ActionCableEventError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() subscribe,
    required TResult Function() unsubscribe,
    required TResult Function(String actionName, Map<String, dynamic> data)
        performAction,
    required TResult Function(T data) data,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? subscribe,
    TResult? Function()? unsubscribe,
    TResult? Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult? Function(T data)? data,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? subscribe,
    TResult Function()? unsubscribe,
    TResult Function(String actionName, Map<String, dynamic> data)?
        performAction,
    TResult Function(T data)? data,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableEventConnect<T> value) connect,
    required TResult Function(_ActionCableEventDisconnect<T> value) disconnect,
    required TResult Function(_ActionCableEventSubscribe<T> value) subscribe,
    required TResult Function(_ActionCableEventUnsubscribe<T> value)
        unsubscribe,
    required TResult Function(_ActionCableEventPerformAction<T> value)
        performAction,
    required TResult Function(_ActionCableEventData<T> value) data,
    required TResult Function(_ActionCableEventError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableEventConnect<T> value)? connect,
    TResult? Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult? Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult? Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult? Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult? Function(_ActionCableEventData<T> value)? data,
    TResult? Function(_ActionCableEventError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableEventConnect<T> value)? connect,
    TResult Function(_ActionCableEventDisconnect<T> value)? disconnect,
    TResult Function(_ActionCableEventSubscribe<T> value)? subscribe,
    TResult Function(_ActionCableEventUnsubscribe<T> value)? unsubscribe,
    TResult Function(_ActionCableEventPerformAction<T> value)? performAction,
    TResult Function(_ActionCableEventData<T> value)? data,
    TResult Function(_ActionCableEventError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ActionCableEventError<T> implements ActionCableEvent<T> {
  const factory _ActionCableEventError({required final String message}) =
      _$_ActionCableEventError<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$_ActionCableEventErrorCopyWith<T, _$_ActionCableEventError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActionCableState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionCableStateCopyWith<T, $Res> {
  factory $ActionCableStateCopyWith(
          ActionCableState<T> value, $Res Function(ActionCableState<T>) then) =
      _$ActionCableStateCopyWithImpl<T, $Res, ActionCableState<T>>;
}

/// @nodoc
class _$ActionCableStateCopyWithImpl<T, $Res, $Val extends ActionCableState<T>>
    implements $ActionCableStateCopyWith<T, $Res> {
  _$ActionCableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ActionCableStateInitialCopyWith<T, $Res> {
  factory _$$_ActionCableStateInitialCopyWith(
          _$_ActionCableStateInitial<T> value,
          $Res Function(_$_ActionCableStateInitial<T>) then) =
      __$$_ActionCableStateInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableStateInitialCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$_ActionCableStateInitial<T>>
    implements _$$_ActionCableStateInitialCopyWith<T, $Res> {
  __$$_ActionCableStateInitialCopyWithImpl(_$_ActionCableStateInitial<T> _value,
      $Res Function(_$_ActionCableStateInitial<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableStateInitial<T> implements _ActionCableStateInitial<T> {
  const _$_ActionCableStateInitial();

  @override
  String toString() {
    return 'ActionCableState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
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
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateInitial<T> implements ActionCableState<T> {
  const factory _ActionCableStateInitial() = _$_ActionCableStateInitial<T>;
}

/// @nodoc
abstract class _$$_ActionCableStateConnectedCopyWith<T, $Res> {
  factory _$$_ActionCableStateConnectedCopyWith(
          _$_ActionCableStateConnected<T> value,
          $Res Function(_$_ActionCableStateConnected<T>) then) =
      __$$_ActionCableStateConnectedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableStateConnectedCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$_ActionCableStateConnected<T>>
    implements _$$_ActionCableStateConnectedCopyWith<T, $Res> {
  __$$_ActionCableStateConnectedCopyWithImpl(
      _$_ActionCableStateConnected<T> _value,
      $Res Function(_$_ActionCableStateConnected<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableStateConnected<T> implements _ActionCableStateConnected<T> {
  const _$_ActionCableStateConnected();

  @override
  String toString() {
    return 'ActionCableState<$T>.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateConnected<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateConnected<T> implements ActionCableState<T> {
  const factory _ActionCableStateConnected() = _$_ActionCableStateConnected<T>;
}

/// @nodoc
abstract class _$$_ActionCableStateDisconnectedCopyWith<T, $Res> {
  factory _$$_ActionCableStateDisconnectedCopyWith(
          _$_ActionCableStateDisconnected<T> value,
          $Res Function(_$_ActionCableStateDisconnected<T>) then) =
      __$$_ActionCableStateDisconnectedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableStateDisconnectedCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$_ActionCableStateDisconnected<T>>
    implements _$$_ActionCableStateDisconnectedCopyWith<T, $Res> {
  __$$_ActionCableStateDisconnectedCopyWithImpl(
      _$_ActionCableStateDisconnected<T> _value,
      $Res Function(_$_ActionCableStateDisconnected<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableStateDisconnected<T>
    implements _ActionCableStateDisconnected<T> {
  const _$_ActionCableStateDisconnected();

  @override
  String toString() {
    return 'ActionCableState<$T>.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateDisconnected<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateDisconnected<T> implements ActionCableState<T> {
  const factory _ActionCableStateDisconnected() =
      _$_ActionCableStateDisconnected<T>;
}

/// @nodoc
abstract class _$$_ActionCableStateErrorCopyWith<T, $Res> {
  factory _$$_ActionCableStateErrorCopyWith(_$_ActionCableStateError<T> value,
          $Res Function(_$_ActionCableStateError<T>) then) =
      __$$_ActionCableStateErrorCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ActionCableStateErrorCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res, _$_ActionCableStateError<T>>
    implements _$$_ActionCableStateErrorCopyWith<T, $Res> {
  __$$_ActionCableStateErrorCopyWithImpl(_$_ActionCableStateError<T> _value,
      $Res Function(_$_ActionCableStateError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ActionCableStateError<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ActionCableStateError<T> implements _ActionCableStateError<T> {
  const _$_ActionCableStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ActionCableState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateError<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCableStateErrorCopyWith<T, _$_ActionCableStateError<T>>
      get copyWith => __$$_ActionCableStateErrorCopyWithImpl<T,
          _$_ActionCableStateError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateError<T> implements ActionCableState<T> {
  const factory _ActionCableStateError({required final String message}) =
      _$_ActionCableStateError<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$_ActionCableStateErrorCopyWith<T, _$_ActionCableStateError<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ActionCableStateSubscribedCopyWith<T, $Res> {
  factory _$$_ActionCableStateSubscribedCopyWith(
          _$_ActionCableStateSubscribed<T> value,
          $Res Function(_$_ActionCableStateSubscribed<T>) then) =
      __$$_ActionCableStateSubscribedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableStateSubscribedCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$_ActionCableStateSubscribed<T>>
    implements _$$_ActionCableStateSubscribedCopyWith<T, $Res> {
  __$$_ActionCableStateSubscribedCopyWithImpl(
      _$_ActionCableStateSubscribed<T> _value,
      $Res Function(_$_ActionCableStateSubscribed<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableStateSubscribed<T>
    implements _ActionCableStateSubscribed<T> {
  const _$_ActionCableStateSubscribed();

  @override
  String toString() {
    return 'ActionCableState<$T>.subscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateSubscribed<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return subscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return subscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return subscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return subscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (subscribed != null) {
      return subscribed(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateSubscribed<T> implements ActionCableState<T> {
  const factory _ActionCableStateSubscribed() =
      _$_ActionCableStateSubscribed<T>;
}

/// @nodoc
abstract class _$$_ActionCableStateUnsubscribedCopyWith<T, $Res> {
  factory _$$_ActionCableStateUnsubscribedCopyWith(
          _$_ActionCableStateUnsubscribed<T> value,
          $Res Function(_$_ActionCableStateUnsubscribed<T>) then) =
      __$$_ActionCableStateUnsubscribedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_ActionCableStateUnsubscribedCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$_ActionCableStateUnsubscribed<T>>
    implements _$$_ActionCableStateUnsubscribedCopyWith<T, $Res> {
  __$$_ActionCableStateUnsubscribedCopyWithImpl(
      _$_ActionCableStateUnsubscribed<T> _value,
      $Res Function(_$_ActionCableStateUnsubscribed<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ActionCableStateUnsubscribed<T>
    implements _ActionCableStateUnsubscribed<T> {
  const _$_ActionCableStateUnsubscribed();

  @override
  String toString() {
    return 'ActionCableState<$T>.unsubscribed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateUnsubscribed<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return unsubscribed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return unsubscribed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return unsubscribed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return unsubscribed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (unsubscribed != null) {
      return unsubscribed(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateUnsubscribed<T> implements ActionCableState<T> {
  const factory _ActionCableStateUnsubscribed() =
      _$_ActionCableStateUnsubscribed<T>;
}

/// @nodoc
abstract class _$$_ActionCableStateDataCopyWith<T, $Res> {
  factory _$$_ActionCableStateDataCopyWith(_$_ActionCableStateData<T> value,
          $Res Function(_$_ActionCableStateData<T>) then) =
      __$$_ActionCableStateDataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> data});
}

/// @nodoc
class __$$_ActionCableStateDataCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res, _$_ActionCableStateData<T>>
    implements _$$_ActionCableStateDataCopyWith<T, $Res> {
  __$$_ActionCableStateDataCopyWithImpl(_$_ActionCableStateData<T> _value,
      $Res Function(_$_ActionCableStateData<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ActionCableStateData<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$_ActionCableStateData<T> implements _ActionCableStateData<T> {
  const _$_ActionCableStateData({required final Map<dynamic, dynamic> data})
      : _data = data;

  final Map<dynamic, dynamic> _data;
  @override
  Map<dynamic, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ActionCableState<$T>.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionCableStateData<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActionCableStateDataCopyWith<T, _$_ActionCableStateData<T>>
      get copyWith =>
          __$$_ActionCableStateDataCopyWithImpl<T, _$_ActionCableStateData<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String message) error,
    required TResult Function() subscribed,
    required TResult Function() unsubscribed,
    required TResult Function(Map<dynamic, dynamic> data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
    TResult? Function(String message)? error,
    TResult? Function()? subscribed,
    TResult? Function()? unsubscribed,
    TResult? Function(Map<dynamic, dynamic> data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String message)? error,
    TResult Function()? subscribed,
    TResult Function()? unsubscribed,
    TResult Function(Map<dynamic, dynamic> data)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionCableStateInitial<T> value) initial,
    required TResult Function(_ActionCableStateConnected<T> value) connected,
    required TResult Function(_ActionCableStateDisconnected<T> value)
        disconnected,
    required TResult Function(_ActionCableStateError<T> value) error,
    required TResult Function(_ActionCableStateSubscribed<T> value) subscribed,
    required TResult Function(_ActionCableStateUnsubscribed<T> value)
        unsubscribed,
    required TResult Function(_ActionCableStateData<T> value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ActionCableStateInitial<T> value)? initial,
    TResult? Function(_ActionCableStateConnected<T> value)? connected,
    TResult? Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult? Function(_ActionCableStateError<T> value)? error,
    TResult? Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult? Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult? Function(_ActionCableStateData<T> value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActionCableStateInitial<T> value)? initial,
    TResult Function(_ActionCableStateConnected<T> value)? connected,
    TResult Function(_ActionCableStateDisconnected<T> value)? disconnected,
    TResult Function(_ActionCableStateError<T> value)? error,
    TResult Function(_ActionCableStateSubscribed<T> value)? subscribed,
    TResult Function(_ActionCableStateUnsubscribed<T> value)? unsubscribed,
    TResult Function(_ActionCableStateData<T> value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ActionCableStateData<T> implements ActionCableState<T> {
  const factory _ActionCableStateData(
      {required final Map<dynamic, dynamic> data}) = _$_ActionCableStateData<T>;

  Map<dynamic, dynamic> get data;
  @JsonKey(ignore: true)
  _$$_ActionCableStateDataCopyWith<T, _$_ActionCableStateData<T>>
      get copyWith => throw _privateConstructorUsedError;
}
