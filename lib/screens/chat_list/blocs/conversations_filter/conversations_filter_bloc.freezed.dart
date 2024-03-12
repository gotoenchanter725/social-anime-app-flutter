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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$FilterChangedImplCopyWith<$Res>
    implements $ConversationsFilterEventCopyWith<$Res> {
  factory _$$FilterChangedImplCopyWith(
          _$FilterChangedImpl value, $Res Function(_$FilterChangedImpl) then) =
      __$$FilterChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filter});
}

/// @nodoc
class __$$FilterChangedImplCopyWithImpl<$Res>
    extends _$ConversationsFilterEventCopyWithImpl<$Res, _$FilterChangedImpl>
    implements _$$FilterChangedImplCopyWith<$Res> {
  __$$FilterChangedImplCopyWithImpl(
      _$FilterChangedImpl _value, $Res Function(_$FilterChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FilterChangedImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterChangedImpl implements _FilterChanged {
  const _$FilterChangedImpl(this.filter);

  @override
  final String filter;

  @override
  String toString() {
    return 'ConversationsFilterEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChangedImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
      __$$FilterChangedImplCopyWithImpl<_$FilterChangedImpl>(this, _$identity);

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
  const factory _FilterChanged(final String filter) = _$FilterChangedImpl;

  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$FilterChangedImplCopyWith<_$FilterChangedImpl> get copyWith =>
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $ConversationsFilterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategorizedConversations filteredConversations, String filter});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ConversationsFilterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredConversations = null,
    Object? filter = null,
  }) {
    return _then(_$InitialImpl(
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.filteredConversations, required this.filter});

  @override
  final CategorizedConversations filteredConversations;
  @override
  final String filter;

  @override
  String toString() {
    return 'ConversationsFilterState.initial(filteredConversations: $filteredConversations, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.filteredConversations, filteredConversations) ||
                other.filteredConversations == filteredConversations) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filteredConversations, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

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
      required final String filter}) = _$InitialImpl;

  @override
  CategorizedConversations get filteredConversations;
  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilteredImplCopyWith<$Res>
    implements $ConversationsFilterStateCopyWith<$Res> {
  factory _$$FilteredImplCopyWith(
          _$FilteredImpl value, $Res Function(_$FilteredImpl) then) =
      __$$FilteredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategorizedConversations filteredConversations, String filter});
}

/// @nodoc
class __$$FilteredImplCopyWithImpl<$Res>
    extends _$ConversationsFilterStateCopyWithImpl<$Res, _$FilteredImpl>
    implements _$$FilteredImplCopyWith<$Res> {
  __$$FilteredImplCopyWithImpl(
      _$FilteredImpl _value, $Res Function(_$FilteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredConversations = null,
    Object? filter = null,
  }) {
    return _then(_$FilteredImpl(
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

class _$FilteredImpl implements _Filtered {
  const _$FilteredImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredImpl &&
            (identical(other.filteredConversations, filteredConversations) ||
                other.filteredConversations == filteredConversations) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filteredConversations, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredImplCopyWith<_$FilteredImpl> get copyWith =>
      __$$FilteredImplCopyWithImpl<_$FilteredImpl>(this, _$identity);

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
      required final String filter}) = _$FilteredImpl;

  @override
  CategorizedConversations get filteredConversations;
  @override
  String get filter;
  @override
  @JsonKey(ignore: true)
  _$$FilteredImplCopyWith<_$FilteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
