// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PendingMessagesEvent {
  String get channelId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String channelId, ChatMessage message) addMessage,
    required TResult Function(String channelId, String messageId) removeMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String channelId, ChatMessage message)? addMessage,
    TResult? Function(String channelId, String messageId)? removeMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String channelId, ChatMessage message)? addMessage,
    TResult Function(String channelId, String messageId)? removeMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddMessage value)? addMessage,
    TResult? Function(RemoveMessage value)? removeMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingMessagesEventCopyWith<PendingMessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingMessagesEventCopyWith<$Res> {
  factory $PendingMessagesEventCopyWith(PendingMessagesEvent value,
          $Res Function(PendingMessagesEvent) then) =
      _$PendingMessagesEventCopyWithImpl<$Res, PendingMessagesEvent>;
  @useResult
  $Res call({String channelId});
}

/// @nodoc
class _$PendingMessagesEventCopyWithImpl<$Res,
        $Val extends PendingMessagesEvent>
    implements $PendingMessagesEventCopyWith<$Res> {
  _$PendingMessagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddMessageImplCopyWith<$Res>
    implements $PendingMessagesEventCopyWith<$Res> {
  factory _$$AddMessageImplCopyWith(
          _$AddMessageImpl value, $Res Function(_$AddMessageImpl) then) =
      __$$AddMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId, ChatMessage message});
}

/// @nodoc
class __$$AddMessageImplCopyWithImpl<$Res>
    extends _$PendingMessagesEventCopyWithImpl<$Res, _$AddMessageImpl>
    implements _$$AddMessageImplCopyWith<$Res> {
  __$$AddMessageImplCopyWithImpl(
      _$AddMessageImpl _value, $Res Function(_$AddMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? message = null,
  }) {
    return _then(_$AddMessageImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }
}

/// @nodoc

class _$AddMessageImpl implements AddMessage {
  const _$AddMessageImpl({required this.channelId, required this.message});

  @override
  final String channelId;
  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'PendingMessagesEvent.addMessage(channelId: $channelId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessageImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessageImplCopyWith<_$AddMessageImpl> get copyWith =>
      __$$AddMessageImplCopyWithImpl<_$AddMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String channelId, ChatMessage message) addMessage,
    required TResult Function(String channelId, String messageId) removeMessage,
  }) {
    return addMessage(channelId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String channelId, ChatMessage message)? addMessage,
    TResult? Function(String channelId, String messageId)? removeMessage,
  }) {
    return addMessage?.call(channelId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String channelId, ChatMessage message)? addMessage,
    TResult Function(String channelId, String messageId)? removeMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(channelId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddMessage value)? addMessage,
    TResult? Function(RemoveMessage value)? removeMessage,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class AddMessage implements PendingMessagesEvent {
  const factory AddMessage(
      {required final String channelId,
      required final ChatMessage message}) = _$AddMessageImpl;

  @override
  String get channelId;
  ChatMessage get message;
  @override
  @JsonKey(ignore: true)
  _$$AddMessageImplCopyWith<_$AddMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMessageImplCopyWith<$Res>
    implements $PendingMessagesEventCopyWith<$Res> {
  factory _$$RemoveMessageImplCopyWith(
          _$RemoveMessageImpl value, $Res Function(_$RemoveMessageImpl) then) =
      __$$RemoveMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId, String messageId});
}

/// @nodoc
class __$$RemoveMessageImplCopyWithImpl<$Res>
    extends _$PendingMessagesEventCopyWithImpl<$Res, _$RemoveMessageImpl>
    implements _$$RemoveMessageImplCopyWith<$Res> {
  __$$RemoveMessageImplCopyWithImpl(
      _$RemoveMessageImpl _value, $Res Function(_$RemoveMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? messageId = null,
  }) {
    return _then(_$RemoveMessageImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveMessageImpl implements RemoveMessage {
  const _$RemoveMessageImpl({required this.channelId, required this.messageId});

  @override
  final String channelId;
  @override
  final String messageId;

  @override
  String toString() {
    return 'PendingMessagesEvent.removeMessage(channelId: $channelId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMessageImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveMessageImplCopyWith<_$RemoveMessageImpl> get copyWith =>
      __$$RemoveMessageImplCopyWithImpl<_$RemoveMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String channelId, ChatMessage message) addMessage,
    required TResult Function(String channelId, String messageId) removeMessage,
  }) {
    return removeMessage(channelId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String channelId, ChatMessage message)? addMessage,
    TResult? Function(String channelId, String messageId)? removeMessage,
  }) {
    return removeMessage?.call(channelId, messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String channelId, ChatMessage message)? addMessage,
    TResult Function(String channelId, String messageId)? removeMessage,
    required TResult orElse(),
  }) {
    if (removeMessage != null) {
      return removeMessage(channelId, messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMessage value) addMessage,
    required TResult Function(RemoveMessage value) removeMessage,
  }) {
    return removeMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddMessage value)? addMessage,
    TResult? Function(RemoveMessage value)? removeMessage,
  }) {
    return removeMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMessage value)? addMessage,
    TResult Function(RemoveMessage value)? removeMessage,
    required TResult orElse(),
  }) {
    if (removeMessage != null) {
      return removeMessage(this);
    }
    return orElse();
  }
}

abstract class RemoveMessage implements PendingMessagesEvent {
  const factory RemoveMessage(
      {required final String channelId,
      required final String messageId}) = _$RemoveMessageImpl;

  @override
  String get channelId;
  String get messageId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveMessageImplCopyWith<_$RemoveMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PendingMessagesState {
  Map<String, Queue<ChatMessage>> get messagesQueue =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PendingMessagesStateCopyWith<PendingMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingMessagesStateCopyWith<$Res> {
  factory $PendingMessagesStateCopyWith(PendingMessagesState value,
          $Res Function(PendingMessagesState) then) =
      _$PendingMessagesStateCopyWithImpl<$Res, PendingMessagesState>;
  @useResult
  $Res call({Map<String, Queue<ChatMessage>> messagesQueue});
}

/// @nodoc
class _$PendingMessagesStateCopyWithImpl<$Res,
        $Val extends PendingMessagesState>
    implements $PendingMessagesStateCopyWith<$Res> {
  _$PendingMessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagesQueue = null,
  }) {
    return _then(_value.copyWith(
      messagesQueue: null == messagesQueue
          ? _value.messagesQueue
          : messagesQueue // ignore: cast_nullable_to_non_nullable
              as Map<String, Queue<ChatMessage>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendingMessagesStateImplCopyWith<$Res>
    implements $PendingMessagesStateCopyWith<$Res> {
  factory _$$PendingMessagesStateImplCopyWith(_$PendingMessagesStateImpl value,
          $Res Function(_$PendingMessagesStateImpl) then) =
      __$$PendingMessagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Queue<ChatMessage>> messagesQueue});
}

/// @nodoc
class __$$PendingMessagesStateImplCopyWithImpl<$Res>
    extends _$PendingMessagesStateCopyWithImpl<$Res, _$PendingMessagesStateImpl>
    implements _$$PendingMessagesStateImplCopyWith<$Res> {
  __$$PendingMessagesStateImplCopyWithImpl(_$PendingMessagesStateImpl _value,
      $Res Function(_$PendingMessagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagesQueue = null,
  }) {
    return _then(_$PendingMessagesStateImpl(
      messagesQueue: null == messagesQueue
          ? _value._messagesQueue
          : messagesQueue // ignore: cast_nullable_to_non_nullable
              as Map<String, Queue<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$PendingMessagesStateImpl implements _PendingMessagesState {
  const _$PendingMessagesStateImpl(
      {final Map<String, Queue<ChatMessage>> messagesQueue = const {}})
      : _messagesQueue = messagesQueue;

  final Map<String, Queue<ChatMessage>> _messagesQueue;
  @override
  @JsonKey()
  Map<String, Queue<ChatMessage>> get messagesQueue {
    if (_messagesQueue is EqualUnmodifiableMapView) return _messagesQueue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_messagesQueue);
  }

  @override
  String toString() {
    return 'PendingMessagesState(messagesQueue: $messagesQueue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingMessagesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._messagesQueue, _messagesQueue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messagesQueue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingMessagesStateImplCopyWith<_$PendingMessagesStateImpl>
      get copyWith =>
          __$$PendingMessagesStateImplCopyWithImpl<_$PendingMessagesStateImpl>(
              this, _$identity);
}

abstract class _PendingMessagesState implements PendingMessagesState {
  const factory _PendingMessagesState(
          {final Map<String, Queue<ChatMessage>> messagesQueue}) =
      _$PendingMessagesStateImpl;

  @override
  Map<String, Queue<ChatMessage>> get messagesQueue;
  @override
  @JsonKey(ignore: true)
  _$$PendingMessagesStateImplCopyWith<_$PendingMessagesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
