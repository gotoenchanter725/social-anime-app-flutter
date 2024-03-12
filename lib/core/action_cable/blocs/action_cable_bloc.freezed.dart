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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ActionCableEventConnectImplCopyWith<T, $Res> {
  factory _$$ActionCableEventConnectImplCopyWith(
          _$ActionCableEventConnectImpl<T> value,
          $Res Function(_$ActionCableEventConnectImpl<T>) then) =
      __$$ActionCableEventConnectImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableEventConnectImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventConnectImpl<T>>
    implements _$$ActionCableEventConnectImplCopyWith<T, $Res> {
  __$$ActionCableEventConnectImplCopyWithImpl(
      _$ActionCableEventConnectImpl<T> _value,
      $Res Function(_$ActionCableEventConnectImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableEventConnectImpl<T> implements _ActionCableEventConnect<T> {
  const _$ActionCableEventConnectImpl();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.connect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventConnectImpl<T>);
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
  const factory _ActionCableEventConnect() = _$ActionCableEventConnectImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableEventDisconnectImplCopyWith<T, $Res> {
  factory _$$ActionCableEventDisconnectImplCopyWith(
          _$ActionCableEventDisconnectImpl<T> value,
          $Res Function(_$ActionCableEventDisconnectImpl<T>) then) =
      __$$ActionCableEventDisconnectImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableEventDisconnectImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventDisconnectImpl<T>>
    implements _$$ActionCableEventDisconnectImplCopyWith<T, $Res> {
  __$$ActionCableEventDisconnectImplCopyWithImpl(
      _$ActionCableEventDisconnectImpl<T> _value,
      $Res Function(_$ActionCableEventDisconnectImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableEventDisconnectImpl<T>
    implements _ActionCableEventDisconnect<T> {
  const _$ActionCableEventDisconnectImpl();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventDisconnectImpl<T>);
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
      _$ActionCableEventDisconnectImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableEventSubscribeImplCopyWith<T, $Res> {
  factory _$$ActionCableEventSubscribeImplCopyWith(
          _$ActionCableEventSubscribeImpl<T> value,
          $Res Function(_$ActionCableEventSubscribeImpl<T>) then) =
      __$$ActionCableEventSubscribeImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableEventSubscribeImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventSubscribeImpl<T>>
    implements _$$ActionCableEventSubscribeImplCopyWith<T, $Res> {
  __$$ActionCableEventSubscribeImplCopyWithImpl(
      _$ActionCableEventSubscribeImpl<T> _value,
      $Res Function(_$ActionCableEventSubscribeImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableEventSubscribeImpl<T>
    implements _ActionCableEventSubscribe<T> {
  const _$ActionCableEventSubscribeImpl();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.subscribe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventSubscribeImpl<T>);
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
  const factory _ActionCableEventSubscribe() =
      _$ActionCableEventSubscribeImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableEventUnsubscribeImplCopyWith<T, $Res> {
  factory _$$ActionCableEventUnsubscribeImplCopyWith(
          _$ActionCableEventUnsubscribeImpl<T> value,
          $Res Function(_$ActionCableEventUnsubscribeImpl<T>) then) =
      __$$ActionCableEventUnsubscribeImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableEventUnsubscribeImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventUnsubscribeImpl<T>>
    implements _$$ActionCableEventUnsubscribeImplCopyWith<T, $Res> {
  __$$ActionCableEventUnsubscribeImplCopyWithImpl(
      _$ActionCableEventUnsubscribeImpl<T> _value,
      $Res Function(_$ActionCableEventUnsubscribeImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableEventUnsubscribeImpl<T>
    implements _ActionCableEventUnsubscribe<T> {
  const _$ActionCableEventUnsubscribeImpl();

  @override
  String toString() {
    return 'ActionCableEvent<$T>.unsubscribe()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventUnsubscribeImpl<T>);
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
      _$ActionCableEventUnsubscribeImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableEventPerformActionImplCopyWith<T, $Res> {
  factory _$$ActionCableEventPerformActionImplCopyWith(
          _$ActionCableEventPerformActionImpl<T> value,
          $Res Function(_$ActionCableEventPerformActionImpl<T>) then) =
      __$$ActionCableEventPerformActionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String actionName, Map<String, dynamic> data});
}

/// @nodoc
class __$$ActionCableEventPerformActionImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventPerformActionImpl<T>>
    implements _$$ActionCableEventPerformActionImplCopyWith<T, $Res> {
  __$$ActionCableEventPerformActionImplCopyWithImpl(
      _$ActionCableEventPerformActionImpl<T> _value,
      $Res Function(_$ActionCableEventPerformActionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionName = null,
    Object? data = null,
  }) {
    return _then(_$ActionCableEventPerformActionImpl<T>(
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

class _$ActionCableEventPerformActionImpl<T>
    implements _ActionCableEventPerformAction<T> {
  const _$ActionCableEventPerformActionImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventPerformActionImpl<T> &&
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
  _$$ActionCableEventPerformActionImplCopyWith<T,
          _$ActionCableEventPerformActionImpl<T>>
      get copyWith => __$$ActionCableEventPerformActionImplCopyWithImpl<T,
          _$ActionCableEventPerformActionImpl<T>>(this, _$identity);

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
      _$ActionCableEventPerformActionImpl<T>;

  String get actionName;
  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$ActionCableEventPerformActionImplCopyWith<T,
          _$ActionCableEventPerformActionImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionCableEventDataImplCopyWith<T, $Res> {
  factory _$$ActionCableEventDataImplCopyWith(
          _$ActionCableEventDataImpl<T> value,
          $Res Function(_$ActionCableEventDataImpl<T>) then) =
      __$$ActionCableEventDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ActionCableEventDataImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventDataImpl<T>>
    implements _$$ActionCableEventDataImplCopyWith<T, $Res> {
  __$$ActionCableEventDataImplCopyWithImpl(_$ActionCableEventDataImpl<T> _value,
      $Res Function(_$ActionCableEventDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ActionCableEventDataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ActionCableEventDataImpl<T> implements _ActionCableEventData<T> {
  const _$ActionCableEventDataImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ActionCableEvent<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionCableEventDataImplCopyWith<T, _$ActionCableEventDataImpl<T>>
      get copyWith => __$$ActionCableEventDataImplCopyWithImpl<T,
          _$ActionCableEventDataImpl<T>>(this, _$identity);

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
      _$ActionCableEventDataImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ActionCableEventDataImplCopyWith<T, _$ActionCableEventDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionCableEventErrorImplCopyWith<T, $Res> {
  factory _$$ActionCableEventErrorImplCopyWith(
          _$ActionCableEventErrorImpl<T> value,
          $Res Function(_$ActionCableEventErrorImpl<T>) then) =
      __$$ActionCableEventErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActionCableEventErrorImplCopyWithImpl<T, $Res>
    extends _$ActionCableEventCopyWithImpl<T, $Res,
        _$ActionCableEventErrorImpl<T>>
    implements _$$ActionCableEventErrorImplCopyWith<T, $Res> {
  __$$ActionCableEventErrorImplCopyWithImpl(
      _$ActionCableEventErrorImpl<T> _value,
      $Res Function(_$ActionCableEventErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActionCableEventErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActionCableEventErrorImpl<T> implements _ActionCableEventError<T> {
  const _$ActionCableEventErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ActionCableEvent<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableEventErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionCableEventErrorImplCopyWith<T, _$ActionCableEventErrorImpl<T>>
      get copyWith => __$$ActionCableEventErrorImplCopyWithImpl<T,
          _$ActionCableEventErrorImpl<T>>(this, _$identity);

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
      _$ActionCableEventErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ActionCableEventErrorImplCopyWith<T, _$ActionCableEventErrorImpl<T>>
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
abstract class _$$ActionCableStateInitialImplCopyWith<T, $Res> {
  factory _$$ActionCableStateInitialImplCopyWith(
          _$ActionCableStateInitialImpl<T> value,
          $Res Function(_$ActionCableStateInitialImpl<T>) then) =
      __$$ActionCableStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableStateInitialImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateInitialImpl<T>>
    implements _$$ActionCableStateInitialImplCopyWith<T, $Res> {
  __$$ActionCableStateInitialImplCopyWithImpl(
      _$ActionCableStateInitialImpl<T> _value,
      $Res Function(_$ActionCableStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableStateInitialImpl<T> implements _ActionCableStateInitial<T> {
  const _$ActionCableStateInitialImpl();

  @override
  String toString() {
    return 'ActionCableState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateInitialImpl<T>);
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
  const factory _ActionCableStateInitial() = _$ActionCableStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableStateConnectedImplCopyWith<T, $Res> {
  factory _$$ActionCableStateConnectedImplCopyWith(
          _$ActionCableStateConnectedImpl<T> value,
          $Res Function(_$ActionCableStateConnectedImpl<T>) then) =
      __$$ActionCableStateConnectedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableStateConnectedImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateConnectedImpl<T>>
    implements _$$ActionCableStateConnectedImplCopyWith<T, $Res> {
  __$$ActionCableStateConnectedImplCopyWithImpl(
      _$ActionCableStateConnectedImpl<T> _value,
      $Res Function(_$ActionCableStateConnectedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableStateConnectedImpl<T>
    implements _ActionCableStateConnected<T> {
  const _$ActionCableStateConnectedImpl();

  @override
  String toString() {
    return 'ActionCableState<$T>.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateConnectedImpl<T>);
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
  const factory _ActionCableStateConnected() =
      _$ActionCableStateConnectedImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableStateDisconnectedImplCopyWith<T, $Res> {
  factory _$$ActionCableStateDisconnectedImplCopyWith(
          _$ActionCableStateDisconnectedImpl<T> value,
          $Res Function(_$ActionCableStateDisconnectedImpl<T>) then) =
      __$$ActionCableStateDisconnectedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableStateDisconnectedImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateDisconnectedImpl<T>>
    implements _$$ActionCableStateDisconnectedImplCopyWith<T, $Res> {
  __$$ActionCableStateDisconnectedImplCopyWithImpl(
      _$ActionCableStateDisconnectedImpl<T> _value,
      $Res Function(_$ActionCableStateDisconnectedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableStateDisconnectedImpl<T>
    implements _ActionCableStateDisconnected<T> {
  const _$ActionCableStateDisconnectedImpl();

  @override
  String toString() {
    return 'ActionCableState<$T>.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateDisconnectedImpl<T>);
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
      _$ActionCableStateDisconnectedImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableStateErrorImplCopyWith<T, $Res> {
  factory _$$ActionCableStateErrorImplCopyWith(
          _$ActionCableStateErrorImpl<T> value,
          $Res Function(_$ActionCableStateErrorImpl<T>) then) =
      __$$ActionCableStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ActionCableStateErrorImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateErrorImpl<T>>
    implements _$$ActionCableStateErrorImplCopyWith<T, $Res> {
  __$$ActionCableStateErrorImplCopyWithImpl(
      _$ActionCableStateErrorImpl<T> _value,
      $Res Function(_$ActionCableStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ActionCableStateErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActionCableStateErrorImpl<T> implements _ActionCableStateError<T> {
  const _$ActionCableStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ActionCableState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionCableStateErrorImplCopyWith<T, _$ActionCableStateErrorImpl<T>>
      get copyWith => __$$ActionCableStateErrorImplCopyWithImpl<T,
          _$ActionCableStateErrorImpl<T>>(this, _$identity);

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
      _$ActionCableStateErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ActionCableStateErrorImplCopyWith<T, _$ActionCableStateErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionCableStateSubscribedImplCopyWith<T, $Res> {
  factory _$$ActionCableStateSubscribedImplCopyWith(
          _$ActionCableStateSubscribedImpl<T> value,
          $Res Function(_$ActionCableStateSubscribedImpl<T>) then) =
      __$$ActionCableStateSubscribedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableStateSubscribedImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateSubscribedImpl<T>>
    implements _$$ActionCableStateSubscribedImplCopyWith<T, $Res> {
  __$$ActionCableStateSubscribedImplCopyWithImpl(
      _$ActionCableStateSubscribedImpl<T> _value,
      $Res Function(_$ActionCableStateSubscribedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableStateSubscribedImpl<T>
    implements _ActionCableStateSubscribed<T> {
  const _$ActionCableStateSubscribedImpl();

  @override
  String toString() {
    return 'ActionCableState<$T>.subscribed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateSubscribedImpl<T>);
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
      _$ActionCableStateSubscribedImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableStateUnsubscribedImplCopyWith<T, $Res> {
  factory _$$ActionCableStateUnsubscribedImplCopyWith(
          _$ActionCableStateUnsubscribedImpl<T> value,
          $Res Function(_$ActionCableStateUnsubscribedImpl<T>) then) =
      __$$ActionCableStateUnsubscribedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ActionCableStateUnsubscribedImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateUnsubscribedImpl<T>>
    implements _$$ActionCableStateUnsubscribedImplCopyWith<T, $Res> {
  __$$ActionCableStateUnsubscribedImplCopyWithImpl(
      _$ActionCableStateUnsubscribedImpl<T> _value,
      $Res Function(_$ActionCableStateUnsubscribedImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionCableStateUnsubscribedImpl<T>
    implements _ActionCableStateUnsubscribed<T> {
  const _$ActionCableStateUnsubscribedImpl();

  @override
  String toString() {
    return 'ActionCableState<$T>.unsubscribed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateUnsubscribedImpl<T>);
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
      _$ActionCableStateUnsubscribedImpl<T>;
}

/// @nodoc
abstract class _$$ActionCableStateDataImplCopyWith<T, $Res> {
  factory _$$ActionCableStateDataImplCopyWith(
          _$ActionCableStateDataImpl<T> value,
          $Res Function(_$ActionCableStateDataImpl<T>) then) =
      __$$ActionCableStateDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Map<dynamic, dynamic> data});
}

/// @nodoc
class __$$ActionCableStateDataImplCopyWithImpl<T, $Res>
    extends _$ActionCableStateCopyWithImpl<T, $Res,
        _$ActionCableStateDataImpl<T>>
    implements _$$ActionCableStateDataImplCopyWith<T, $Res> {
  __$$ActionCableStateDataImplCopyWithImpl(_$ActionCableStateDataImpl<T> _value,
      $Res Function(_$ActionCableStateDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ActionCableStateDataImpl<T>(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class _$ActionCableStateDataImpl<T> implements _ActionCableStateData<T> {
  const _$ActionCableStateDataImpl({required final Map<dynamic, dynamic> data})
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionCableStateDataImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionCableStateDataImplCopyWith<T, _$ActionCableStateDataImpl<T>>
      get copyWith => __$$ActionCableStateDataImplCopyWithImpl<T,
          _$ActionCableStateDataImpl<T>>(this, _$identity);

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
          {required final Map<dynamic, dynamic> data}) =
      _$ActionCableStateDataImpl<T>;

  Map<dynamic, dynamic> get data;
  @JsonKey(ignore: true)
  _$$ActionCableStateDataImplCopyWith<T, _$ActionCableStateDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
