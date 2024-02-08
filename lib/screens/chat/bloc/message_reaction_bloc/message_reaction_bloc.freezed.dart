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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ShowReactionsCopyWith<$Res> {
  factory _$$_ShowReactionsCopyWith(
          _$_ShowReactions value, $Res Function(_$_ShowReactions) then) =
      __$$_ShowReactionsCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageId});
}

/// @nodoc
class __$$_ShowReactionsCopyWithImpl<$Res>
    extends _$MessageReactionEventCopyWithImpl<$Res, _$_ShowReactions>
    implements _$$_ShowReactionsCopyWith<$Res> {
  __$$_ShowReactionsCopyWithImpl(
      _$_ShowReactions _value, $Res Function(_$_ShowReactions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
  }) {
    return _then(_$_ShowReactions(
      null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowReactions implements _ShowReactions {
  const _$_ShowReactions(this.messageId);

  @override
  final String messageId;

  @override
  String toString() {
    return 'MessageReactionEvent.showReactions(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowReactions &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowReactionsCopyWith<_$_ShowReactions> get copyWith =>
      __$$_ShowReactionsCopyWithImpl<_$_ShowReactions>(this, _$identity);

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
  const factory _ShowReactions(final String messageId) = _$_ShowReactions;

  String get messageId;
  @JsonKey(ignore: true)
  _$$_ShowReactionsCopyWith<_$_ShowReactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HideReactionsCopyWith<$Res> {
  factory _$$_HideReactionsCopyWith(
          _$_HideReactions value, $Res Function(_$_HideReactions) then) =
      __$$_HideReactionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HideReactionsCopyWithImpl<$Res>
    extends _$MessageReactionEventCopyWithImpl<$Res, _$_HideReactions>
    implements _$$_HideReactionsCopyWith<$Res> {
  __$$_HideReactionsCopyWithImpl(
      _$_HideReactions _value, $Res Function(_$_HideReactions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HideReactions implements _HideReactions {
  const _$_HideReactions();

  @override
  String toString() {
    return 'MessageReactionEvent.hideReactions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HideReactions);
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
  const factory _HideReactions() = _$_HideReactions;
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
abstract class _$$_MessageReactionStateCopyWith<$Res>
    implements $MessageReactionStateCopyWith<$Res> {
  factory _$$_MessageReactionStateCopyWith(_$_MessageReactionState value,
          $Res Function(_$_MessageReactionState) then) =
      __$$_MessageReactionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showReactions, bool showEmojiReactions, String? activeMessageId});
}

/// @nodoc
class __$$_MessageReactionStateCopyWithImpl<$Res>
    extends _$MessageReactionStateCopyWithImpl<$Res, _$_MessageReactionState>
    implements _$$_MessageReactionStateCopyWith<$Res> {
  __$$_MessageReactionStateCopyWithImpl(_$_MessageReactionState _value,
      $Res Function(_$_MessageReactionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showReactions = null,
    Object? showEmojiReactions = null,
    Object? activeMessageId = freezed,
  }) {
    return _then(_$_MessageReactionState(
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

class _$_MessageReactionState implements _MessageReactionState {
  const _$_MessageReactionState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageReactionState &&
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
  _$$_MessageReactionStateCopyWith<_$_MessageReactionState> get copyWith =>
      __$$_MessageReactionStateCopyWithImpl<_$_MessageReactionState>(
          this, _$identity);
}

abstract class _MessageReactionState implements MessageReactionState {
  const factory _MessageReactionState(
      {final bool showReactions,
      final bool showEmojiReactions,
      final String? activeMessageId}) = _$_MessageReactionState;

  @override
  bool get showReactions;
  @override
  bool get showEmojiReactions;
  @override
  String? get activeMessageId;
  @override
  @JsonKey(ignore: true)
  _$$_MessageReactionStateCopyWith<_$_MessageReactionState> get copyWith =>
      throw _privateConstructorUsedError;
}
