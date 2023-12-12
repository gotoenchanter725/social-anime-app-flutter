// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversations_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationsFilterEvent {
  String get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filter)? filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? filterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterChanged value) filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterChanged value)? filterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationsFilterEventCopyWith<ConversationsFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationsFilterEventCopyWith<$Res> {
  factory $ConversationsFilterEventCopyWith(ConversationsFilterEvent value,
          $Res Function(ConversationsFilterEvent) then) =
      _$ConversationsFilterEventCopyWithImpl<$Res, ConversationsFilterEvent>;
  @useResult
  $Res call({String filter});
}

/// @nodoc
class _$ConversationsFilterEventCopyWithImpl<$Res,
        $Val extends ConversationsFilterEvent>
    implements $ConversationsFilterEventCopyWith<$Res> {
  _$ConversationsFilterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterChangedCopyWith<$Res>
    implements $ConversationsFilterEventCopyWith<$Res> {
  factory _$$_FilterChangedCopyWith(
          _$_FilterChanged value, $Res Function(_$_FilterChanged) then) =
      __$$_FilterChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filter});
}

/// @nodoc
class __$$_FilterChangedCopyWithImpl<$Res>
    extends _$ConversationsFilterEventCopyWithImpl<$Res, _$_FilterChanged>
    implements _$$_FilterChangedCopyWith<$Res> {
  __$$_FilterChangedCopyWithImpl(
      _$_FilterChanged _value, $Res Function(_$_FilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$_FilterChanged(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterChanged implements _FilterChanged {
  const _$_FilterChanged(this.filter);

  @override
  final String filter;

  @override
  String toString() {
    return 'ConversationsFilterEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterChanged &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterChangedCopyWith<_$_FilterChanged> get copyWith =>
      __$$_FilterChangedCopyWithImpl<_$_FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String filter) filterChanged,
  }) {
    return filterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String filter)? filterChanged,
  }) {
    return filterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String filter)? filterChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterChanged value) filterChanged,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterChanged value)? filterChanged,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterChanged value)? filterChanged,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class _FilterChanged implements ConversationsFilterEvent {
  const factory _FilterChanged(final String filter) = _$_FilterChanged;

  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$_FilterChangedCopyWith<_$_FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationsFilterState {
  CategorizedConversations get filteredConversations =>
      throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CategorizedConversations filteredConversations, String filter)
        initial,
    required TResult Function(
            CategorizedConversations filteredConversations, String filter)
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CategorizedConversations filteredConversations, String filter)?
        initial,
    TResult? Function(
            CategorizedConversations filteredConversations, String filter)?
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CategorizedConversations filteredConversations, String filter)?
        initial,
    TResult Function(
            CategorizedConversations filteredConversations, String filter)?
        filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtered value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Filtered value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationsFilterStateCopyWith<ConversationsFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationsFilterStateCopyWith<$Res> {
  factory $ConversationsFilterStateCopyWith(ConversationsFilterState value,
          $Res Function(ConversationsFilterState) then) =
      _$ConversationsFilterStateCopyWithImpl<$Res, ConversationsFilterState>;
  @useResult
  $Res call({CategorizedConversations filteredConversations, String filter});
}

/// @nodoc
class _$ConversationsFilterStateCopyWithImpl<$Res,
        $Val extends ConversationsFilterState>
    implements $ConversationsFilterStateCopyWith<$Res> {
  _$ConversationsFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredConversations = null,
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filteredConversations: null == filteredConversations
          ? _value.filteredConversations
          : filteredConversations // ignore: cast_nullable_to_non_nullable
              as CategorizedConversations,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ConversationsFilterStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategorizedConversations filteredConversations, String filter});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConversationsFilterStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredConversations = null,
    Object? filter = null,
  }) {
    return _then(_$_Initial(
      filteredConversations: null == filteredConversations
          ? _value.filteredConversations
          : filteredConversations // ignore: cast_nullable_to_non_nullable
              as CategorizedConversations,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.filteredConversations, required this.filter});

  @override
  final CategorizedConversations filteredConversations;
  @override
  final String filter;

  @override
  String toString() {
    return 'ConversationsFilterState.initial(filteredConversations: $filteredConversations, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.filteredConversations, filteredConversations) ||
                other.filteredConversations == filteredConversations) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filteredConversations, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CategorizedConversations filteredConversations, String filter)
        initial,
    required TResult Function(
            CategorizedConversations filteredConversations, String filter)
        filtered,
  }) {
    return initial(filteredConversations, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CategorizedConversations filteredConversations, String filter)?
        initial,
    TResult? Function(
            CategorizedConversations filteredConversations, String filter)?
        filtered,
  }) {
    return initial?.call(filteredConversations, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CategorizedConversations filteredConversations, String filter)?
        initial,
    TResult Function(
            CategorizedConversations filteredConversations, String filter)?
        filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(filteredConversations, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtered value) filtered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Filtered value)? filtered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConversationsFilterState {
  const factory _Initial(
      {required final CategorizedConversations filteredConversations,
      required final String filter}) = _$_Initial;

  @override
  CategorizedConversations get filteredConversations;
  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilteredCopyWith<$Res>
    implements $ConversationsFilterStateCopyWith<$Res> {
  factory _$$_FilteredCopyWith(
          _$_Filtered value, $Res Function(_$_Filtered) then) =
      __$$_FilteredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategorizedConversations filteredConversations, String filter});
}

/// @nodoc
class __$$_FilteredCopyWithImpl<$Res>
    extends _$ConversationsFilterStateCopyWithImpl<$Res, _$_Filtered>
    implements _$$_FilteredCopyWith<$Res> {
  __$$_FilteredCopyWithImpl(
      _$_Filtered _value, $Res Function(_$_Filtered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredConversations = null,
    Object? filter = null,
  }) {
    return _then(_$_Filtered(
      filteredConversations: null == filteredConversations
          ? _value.filteredConversations
          : filteredConversations // ignore: cast_nullable_to_non_nullable
              as CategorizedConversations,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered(
      {required this.filteredConversations, required this.filter});

  @override
  final CategorizedConversations filteredConversations;
  @override
  final String filter;

  @override
  String toString() {
    return 'ConversationsFilterState.filtered(filteredConversations: $filteredConversations, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filtered &&
            (identical(other.filteredConversations, filteredConversations) ||
                other.filteredConversations == filteredConversations) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filteredConversations, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilteredCopyWith<_$_Filtered> get copyWith =>
      __$$_FilteredCopyWithImpl<_$_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CategorizedConversations filteredConversations, String filter)
        initial,
    required TResult Function(
            CategorizedConversations filteredConversations, String filter)
        filtered,
  }) {
    return filtered(filteredConversations, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CategorizedConversations filteredConversations, String filter)?
        initial,
    TResult? Function(
            CategorizedConversations filteredConversations, String filter)?
        filtered,
  }) {
    return filtered?.call(filteredConversations, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CategorizedConversations filteredConversations, String filter)?
        initial,
    TResult Function(
            CategorizedConversations filteredConversations, String filter)?
        filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(filteredConversations, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtered value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Filtered value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements ConversationsFilterState {
  const factory _Filtered(
      {required final CategorizedConversations filteredConversations,
      required final String filter}) = _$_Filtered;

  @override
  CategorizedConversations get filteredConversations;
  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$_FilteredCopyWith<_$_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}
