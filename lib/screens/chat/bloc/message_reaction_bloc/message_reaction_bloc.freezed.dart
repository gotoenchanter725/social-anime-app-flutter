// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_reaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageReactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) showReactions,
    required TResult Function() hideReactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? showReactions,
    TResult? Function()? hideReactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? showReactions,
    TResult Function()? hideReactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowReactions value) showReactions,
    required TResult Function(_HideReactions value) hideReactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowReactions value)? showReactions,
    TResult? Function(_HideReactions value)? hideReactions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowReactions value)? showReactions,
    TResult Function(_HideReactions value)? hideReactions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReactionEventCopyWith<$Res> {
  factory $MessageReactionEventCopyWith(MessageReactionEvent value,
          $Res Function(MessageReactionEvent) then) =
      _$MessageReactionEventCopyWithImpl<$Res, MessageReactionEvent>;
}

/// @nodoc
class _$MessageReactionEventCopyWithImpl<$Res,
        $Val extends MessageReactionEvent>
    implements $MessageReactionEventCopyWith<$Res> {
  _$MessageReactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowReactionsImplCopyWith<$Res> {
  factory _$$ShowReactionsImplCopyWith(
          _$ShowReactionsImpl value, $Res Function(_$ShowReactionsImpl) then) =
      __$$ShowReactionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$ShowReactionsImplCopyWithImpl<$Res>
    extends _$MessageReactionEventCopyWithImpl<$Res, _$ShowReactionsImpl>
    implements _$$ShowReactionsImplCopyWith<$Res> {
  __$$ShowReactionsImplCopyWithImpl(
      _$ShowReactionsImpl _value, $Res Function(_$ShowReactionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$ShowReactionsImpl(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowReactionsImpl implements _ShowReactions {
  const _$ShowReactionsImpl(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'MessageReactionEvent.showReactions(messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowReactionsImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowReactionsImplCopyWith<_$ShowReactionsImpl> get copyWith =>
      __$$ShowReactionsImplCopyWithImpl<_$ShowReactionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) showReactions,
    required TResult Function() hideReactions,
  }) {
    return showReactions(messageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? showReactions,
    TResult? Function()? hideReactions,
  }) {
    return showReactions?.call(messageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? showReactions,
    TResult Function()? hideReactions,
    required TResult orElse(),
  }) {
    if (showReactions != null) {
      return showReactions(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowReactions value) showReactions,
    required TResult Function(_HideReactions value) hideReactions,
  }) {
    return showReactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowReactions value)? showReactions,
    TResult? Function(_HideReactions value)? hideReactions,
  }) {
    return showReactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowReactions value)? showReactions,
    TResult Function(_HideReactions value)? hideReactions,
    required TResult orElse(),
  }) {
    if (showReactions != null) {
      return showReactions(this);
    }
    return orElse();
  }
}

abstract class _ShowReactions implements MessageReactionEvent {
  const factory _ShowReactions(final String messageId) = _$ShowReactionsImpl;

  String get messageId;
  @JsonKey(ignore: true)
  _$$ShowReactionsImplCopyWith<_$ShowReactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideReactionsImplCopyWith<$Res> {
  factory _$$HideReactionsImplCopyWith(
          _$HideReactionsImpl value, $Res Function(_$HideReactionsImpl) then) =
      __$$HideReactionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideReactionsImplCopyWithImpl<$Res>
    extends _$MessageReactionEventCopyWithImpl<$Res, _$HideReactionsImpl>
    implements _$$HideReactionsImplCopyWith<$Res> {
  __$$HideReactionsImplCopyWithImpl(
      _$HideReactionsImpl _value, $Res Function(_$HideReactionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HideReactionsImpl implements _HideReactions {
  const _$HideReactionsImpl();

  @override
  String toString() {
    return 'MessageReactionEvent.hideReactions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideReactionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messageId) showReactions,
    required TResult Function() hideReactions,
  }) {
    return hideReactions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageId)? showReactions,
    TResult? Function()? hideReactions,
  }) {
    return hideReactions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageId)? showReactions,
    TResult Function()? hideReactions,
    required TResult orElse(),
  }) {
    if (hideReactions != null) {
      return hideReactions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowReactions value) showReactions,
    required TResult Function(_HideReactions value) hideReactions,
  }) {
    return hideReactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowReactions value)? showReactions,
    TResult? Function(_HideReactions value)? hideReactions,
  }) {
    return hideReactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowReactions value)? showReactions,
    TResult Function(_HideReactions value)? hideReactions,
    required TResult orElse(),
  }) {
    if (hideReactions != null) {
      return hideReactions(this);
    }
    return orElse();
  }
}

abstract class _HideReactions implements MessageReactionEvent {
  const factory _HideReactions() = _$HideReactionsImpl;
}

/// @nodoc
mixin _$MessageReactionState {
  bool get showReactions => throw _privateConstructorUsedError;
  bool get showEmojiReactions => throw _privateConstructorUsedError;
  String? get activeMessageId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageReactionStateCopyWith<MessageReactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReactionStateCopyWith<$Res> {
  factory $MessageReactionStateCopyWith(MessageReactionState value,
          $Res Function(MessageReactionState) then) =
      _$MessageReactionStateCopyWithImpl<$Res, MessageReactionState>;
  @useResult
  $Res call(
      {bool showReactions, bool showEmojiReactions, String? activeMessageId});
}

/// @nodoc
class _$MessageReactionStateCopyWithImpl<$Res,
        $Val extends MessageReactionState>
    implements $MessageReactionStateCopyWith<$Res> {
  _$MessageReactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReactions = null,
    Object? showEmojiReactions = null,
    Object? activeMessageId = freezed,
  }) {
    return _then(_value.copyWith(
      showReactions: null == showReactions
          ? _value.showReactions
          : showReactions // ignore: cast_nullable_to_non_nullable
              as bool,
      showEmojiReactions: null == showEmojiReactions
          ? _value.showEmojiReactions
          : showEmojiReactions // ignore: cast_nullable_to_non_nullable
              as bool,
      activeMessageId: freezed == activeMessageId
          ? _value.activeMessageId
          : activeMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageReactionStateImplCopyWith<$Res>
    implements $MessageReactionStateCopyWith<$Res> {
  factory _$$MessageReactionStateImplCopyWith(_$MessageReactionStateImpl value,
          $Res Function(_$MessageReactionStateImpl) then) =
      __$$MessageReactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showReactions, bool showEmojiReactions, String? activeMessageId});
}

/// @nodoc
class __$$MessageReactionStateImplCopyWithImpl<$Res>
    extends _$MessageReactionStateCopyWithImpl<$Res, _$MessageReactionStateImpl>
    implements _$$MessageReactionStateImplCopyWith<$Res> {
  __$$MessageReactionStateImplCopyWithImpl(_$MessageReactionStateImpl _value,
      $Res Function(_$MessageReactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReactions = null,
    Object? showEmojiReactions = null,
    Object? activeMessageId = freezed,
  }) {
    return _then(_$MessageReactionStateImpl(
      showReactions: null == showReactions
          ? _value.showReactions
          : showReactions // ignore: cast_nullable_to_non_nullable
              as bool,
      showEmojiReactions: null == showEmojiReactions
          ? _value.showEmojiReactions
          : showEmojiReactions // ignore: cast_nullable_to_non_nullable
              as bool,
      activeMessageId: freezed == activeMessageId
          ? _value.activeMessageId
          : activeMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MessageReactionStateImpl implements _MessageReactionState {
  const _$MessageReactionStateImpl(
      {this.showReactions = false,
      this.showEmojiReactions = false,
      this.activeMessageId});

  @override
  @JsonKey()
  final bool showReactions;
  @override
  @JsonKey()
  final bool showEmojiReactions;
  @override
  final String? activeMessageId;

  @override
  String toString() {
    return 'MessageReactionState(showReactions: $showReactions, showEmojiReactions: $showEmojiReactions, activeMessageId: $activeMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReactionStateImpl &&
            (identical(other.showReactions, showReactions) ||
                other.showReactions == showReactions) &&
            (identical(other.showEmojiReactions, showEmojiReactions) ||
                other.showEmojiReactions == showEmojiReactions) &&
            (identical(other.activeMessageId, activeMessageId) ||
                other.activeMessageId == activeMessageId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, showReactions, showEmojiReactions, activeMessageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReactionStateImplCopyWith<_$MessageReactionStateImpl>
      get copyWith =>
          __$$MessageReactionStateImplCopyWithImpl<_$MessageReactionStateImpl>(
              this, _$identity);
}

abstract class _MessageReactionState implements MessageReactionState {
  const factory _MessageReactionState(
      {final bool showReactions,
      final bool showEmojiReactions,
      final String? activeMessageId}) = _$MessageReactionStateImpl;

  @override
  bool get showReactions;
  @override
  bool get showEmojiReactions;
  @override
  String? get activeMessageId;
  @override
  @JsonKey(ignore: true)
  _$$MessageReactionStateImplCopyWith<_$MessageReactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
