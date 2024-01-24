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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$AddMessageCopyWith<$Res>
    implements $PendingMessagesEventCopyWith<$Res> {
  factory _$$AddMessageCopyWith(
          _$AddMessage value, $Res Function(_$AddMessage) then) =
      __$$AddMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId, ChatMessage message});
}

/// @nodoc
class __$$AddMessageCopyWithImpl<$Res>
    extends _$PendingMessagesEventCopyWithImpl<$Res, _$AddMessage>
    implements _$$AddMessageCopyWith<$Res> {
  __$$AddMessageCopyWithImpl(
      _$AddMessage _value, $Res Function(_$AddMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? message = null,
  }) {
    return _then(_$AddMessage(
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

class _$AddMessage implements AddMessage {
  const _$AddMessage({required this.channelId, required this.message});

  @override
  final String channelId;
  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'PendingMessagesEvent.addMessage(channelId: $channelId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessage &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessageCopyWith<_$AddMessage> get copyWith =>
      __$$AddMessageCopyWithImpl<_$AddMessage>(this, _$identity);

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
      required final ChatMessage message}) = _$AddMessage;

  @override
  String get channelId;
  ChatMessage get message;
  @override
  @JsonKey(ignore: true)
  _$$AddMessageCopyWith<_$AddMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveMessageCopyWith<$Res>
    implements $PendingMessagesEventCopyWith<$Res> {
  factory _$$RemoveMessageCopyWith(
          _$RemoveMessage value, $Res Function(_$RemoveMessage) then) =
      __$$RemoveMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String channelId, String messageId});
}

/// @nodoc
class __$$RemoveMessageCopyWithImpl<$Res>
    extends _$PendingMessagesEventCopyWithImpl<$Res, _$RemoveMessage>
    implements _$$RemoveMessageCopyWith<$Res> {
  __$$RemoveMessageCopyWithImpl(
      _$RemoveMessage _value, $Res Function(_$RemoveMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? messageId = null,
  }) {
    return _then(_$RemoveMessage(
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

class _$RemoveMessage implements RemoveMessage {
  const _$RemoveMessage({required this.channelId, required this.messageId});

  @override
  final String channelId;
  @override
  final String messageId;

  @override
  String toString() {
    return 'PendingMessagesEvent.removeMessage(channelId: $channelId, messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveMessage &&
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
  _$$RemoveMessageCopyWith<_$RemoveMessage> get copyWith =>
      __$$RemoveMessageCopyWithImpl<_$RemoveMessage>(this, _$identity);

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
      required final String messageId}) = _$RemoveMessage;

  @override
  String get channelId;
  String get messageId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveMessageCopyWith<_$RemoveMessage> get copyWith =>
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
abstract class _$$_PendingMessagesStateCopyWith<$Res>
    implements $PendingMessagesStateCopyWith<$Res> {
  factory _$$_PendingMessagesStateCopyWith(_$_PendingMessagesState value,
          $Res Function(_$_PendingMessagesState) then) =
      __$$_PendingMessagesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Queue<ChatMessage>> messagesQueue});
}

/// @nodoc
class __$$_PendingMessagesStateCopyWithImpl<$Res>
    extends _$PendingMessagesStateCopyWithImpl<$Res, _$_PendingMessagesState>
    implements _$$_PendingMessagesStateCopyWith<$Res> {
  __$$_PendingMessagesStateCopyWithImpl(_$_PendingMessagesState _value,
      $Res Function(_$_PendingMessagesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagesQueue = null,
  }) {
    return _then(_$_PendingMessagesState(
      messagesQueue: null == messagesQueue
          ? _value._messagesQueue
          : messagesQueue // ignore: cast_nullable_to_non_nullable
              as Map<String, Queue<ChatMessage>>,
    ));
  }
}

/// @nodoc

class _$_PendingMessagesState implements _PendingMessagesState {
  const _$_PendingMessagesState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendingMessagesState &&
            const DeepCollectionEquality()
                .equals(other._messagesQueue, _messagesQueue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messagesQueue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PendingMessagesStateCopyWith<_$_PendingMessagesState> get copyWith =>
      __$$_PendingMessagesStateCopyWithImpl<_$_PendingMessagesState>(
          this, _$identity);
}

abstract class _PendingMessagesState implements PendingMessagesState {
  const factory _PendingMessagesState(
          {final Map<String, Queue<ChatMessage>> messagesQueue}) =
      _$_PendingMessagesState;

  @override
  Map<String, Queue<ChatMessage>> get messagesQueue;
  @override
  @JsonKey(ignore: true)
  _$$_PendingMessagesStateCopyWith<_$_PendingMessagesState> get copyWith =>
      throw _privateConstructorUsedError;
}
