// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnimeSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleSearchMode,
    required TResult Function(AnimeModel selectedAnime) selectAnime,
    required TResult Function(String description) updateDescription,
    required TResult Function(String query) performSearch,
    required TResult Function(bool needUpdatePagination, int page)
        updatePagination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleSearchMode,
    TResult? Function(AnimeModel selectedAnime)? selectAnime,
    TResult? Function(String description)? updateDescription,
    TResult? Function(String query)? performSearch,
    TResult? Function(bool needUpdatePagination, int page)? updatePagination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleSearchMode,
    TResult Function(AnimeModel selectedAnime)? selectAnime,
    TResult Function(String description)? updateDescription,
    TResult Function(String query)? performSearch,
    TResult Function(bool needUpdatePagination, int page)? updatePagination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSearchMode value) toggleSearchMode,
    required TResult Function(_SelectAnime value) selectAnime,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_UpdatePagination value) updatePagination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult? Function(_SelectAnime value)? selectAnime,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_UpdatePagination value)? updatePagination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult Function(_SelectAnime value)? selectAnime,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_UpdatePagination value)? updatePagination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeSelectorEventCopyWith<$Res> {
  factory $AnimeSelectorEventCopyWith(
          AnimeSelectorEvent value, $Res Function(AnimeSelectorEvent) then) =
      _$AnimeSelectorEventCopyWithImpl<$Res, AnimeSelectorEvent>;
}

/// @nodoc
class _$AnimeSelectorEventCopyWithImpl<$Res, $Val extends AnimeSelectorEvent>
    implements $AnimeSelectorEventCopyWith<$Res> {
  _$AnimeSelectorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleSearchModeImplCopyWith<$Res> {
  factory _$$ToggleSearchModeImplCopyWith(_$ToggleSearchModeImpl value,
          $Res Function(_$ToggleSearchModeImpl) then) =
      __$$ToggleSearchModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleSearchModeImplCopyWithImpl<$Res>
    extends _$AnimeSelectorEventCopyWithImpl<$Res, _$ToggleSearchModeImpl>
    implements _$$ToggleSearchModeImplCopyWith<$Res> {
  __$$ToggleSearchModeImplCopyWithImpl(_$ToggleSearchModeImpl _value,
      $Res Function(_$ToggleSearchModeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleSearchModeImpl implements _ToggleSearchMode {
  const _$ToggleSearchModeImpl();

  @override
  String toString() {
    return 'AnimeSelectorEvent.toggleSearchMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleSearchModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleSearchMode,
    required TResult Function(AnimeModel selectedAnime) selectAnime,
    required TResult Function(String description) updateDescription,
    required TResult Function(String query) performSearch,
    required TResult Function(bool needUpdatePagination, int page)
        updatePagination,
  }) {
    return toggleSearchMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleSearchMode,
    TResult? Function(AnimeModel selectedAnime)? selectAnime,
    TResult? Function(String description)? updateDescription,
    TResult? Function(String query)? performSearch,
    TResult? Function(bool needUpdatePagination, int page)? updatePagination,
  }) {
    return toggleSearchMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleSearchMode,
    TResult Function(AnimeModel selectedAnime)? selectAnime,
    TResult Function(String description)? updateDescription,
    TResult Function(String query)? performSearch,
    TResult Function(bool needUpdatePagination, int page)? updatePagination,
    required TResult orElse(),
  }) {
    if (toggleSearchMode != null) {
      return toggleSearchMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSearchMode value) toggleSearchMode,
    required TResult Function(_SelectAnime value) selectAnime,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_UpdatePagination value) updatePagination,
  }) {
    return toggleSearchMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult? Function(_SelectAnime value)? selectAnime,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_UpdatePagination value)? updatePagination,
  }) {
    return toggleSearchMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult Function(_SelectAnime value)? selectAnime,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_UpdatePagination value)? updatePagination,
    required TResult orElse(),
  }) {
    if (toggleSearchMode != null) {
      return toggleSearchMode(this);
    }
    return orElse();
  }
}

abstract class _ToggleSearchMode implements AnimeSelectorEvent {
  const factory _ToggleSearchMode() = _$ToggleSearchModeImpl;
}

/// @nodoc
abstract class _$$SelectAnimeImplCopyWith<$Res> {
  factory _$$SelectAnimeImplCopyWith(
          _$SelectAnimeImpl value, $Res Function(_$SelectAnimeImpl) then) =
      __$$SelectAnimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnimeModel selectedAnime});

  $AnimeModelCopyWith<$Res> get selectedAnime;
}

/// @nodoc
class __$$SelectAnimeImplCopyWithImpl<$Res>
    extends _$AnimeSelectorEventCopyWithImpl<$Res, _$SelectAnimeImpl>
    implements _$$SelectAnimeImplCopyWith<$Res> {
  __$$SelectAnimeImplCopyWithImpl(
      _$SelectAnimeImpl _value, $Res Function(_$SelectAnimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAnime = null,
  }) {
    return _then(_$SelectAnimeImpl(
      null == selectedAnime
          ? _value.selectedAnime
          : selectedAnime // ignore: cast_nullable_to_non_nullable
              as AnimeModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeModelCopyWith<$Res> get selectedAnime {
    return $AnimeModelCopyWith<$Res>(_value.selectedAnime, (value) {
      return _then(_value.copyWith(selectedAnime: value));
    });
  }
}

/// @nodoc

class _$SelectAnimeImpl implements _SelectAnime {
  const _$SelectAnimeImpl(this.selectedAnime);

  @override
  final AnimeModel selectedAnime;

  @override
  String toString() {
    return 'AnimeSelectorEvent.selectAnime(selectedAnime: $selectedAnime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAnimeImpl &&
            (identical(other.selectedAnime, selectedAnime) ||
                other.selectedAnime == selectedAnime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedAnime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAnimeImplCopyWith<_$SelectAnimeImpl> get copyWith =>
      __$$SelectAnimeImplCopyWithImpl<_$SelectAnimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleSearchMode,
    required TResult Function(AnimeModel selectedAnime) selectAnime,
    required TResult Function(String description) updateDescription,
    required TResult Function(String query) performSearch,
    required TResult Function(bool needUpdatePagination, int page)
        updatePagination,
  }) {
    return selectAnime(selectedAnime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleSearchMode,
    TResult? Function(AnimeModel selectedAnime)? selectAnime,
    TResult? Function(String description)? updateDescription,
    TResult? Function(String query)? performSearch,
    TResult? Function(bool needUpdatePagination, int page)? updatePagination,
  }) {
    return selectAnime?.call(selectedAnime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleSearchMode,
    TResult Function(AnimeModel selectedAnime)? selectAnime,
    TResult Function(String description)? updateDescription,
    TResult Function(String query)? performSearch,
    TResult Function(bool needUpdatePagination, int page)? updatePagination,
    required TResult orElse(),
  }) {
    if (selectAnime != null) {
      return selectAnime(selectedAnime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSearchMode value) toggleSearchMode,
    required TResult Function(_SelectAnime value) selectAnime,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_UpdatePagination value) updatePagination,
  }) {
    return selectAnime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult? Function(_SelectAnime value)? selectAnime,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_UpdatePagination value)? updatePagination,
  }) {
    return selectAnime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult Function(_SelectAnime value)? selectAnime,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_UpdatePagination value)? updatePagination,
    required TResult orElse(),
  }) {
    if (selectAnime != null) {
      return selectAnime(this);
    }
    return orElse();
  }
}

abstract class _SelectAnime implements AnimeSelectorEvent {
  const factory _SelectAnime(final AnimeModel selectedAnime) =
      _$SelectAnimeImpl;

  AnimeModel get selectedAnime;
  @JsonKey(ignore: true)
  _$$SelectAnimeImplCopyWith<_$SelectAnimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDescriptionImplCopyWith<$Res> {
  factory _$$UpdateDescriptionImplCopyWith(_$UpdateDescriptionImpl value,
          $Res Function(_$UpdateDescriptionImpl) then) =
      __$$UpdateDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$UpdateDescriptionImplCopyWithImpl<$Res>
    extends _$AnimeSelectorEventCopyWithImpl<$Res, _$UpdateDescriptionImpl>
    implements _$$UpdateDescriptionImplCopyWith<$Res> {
  __$$UpdateDescriptionImplCopyWithImpl(_$UpdateDescriptionImpl _value,
      $Res Function(_$UpdateDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$UpdateDescriptionImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateDescriptionImpl implements _UpdateDescription {
  const _$UpdateDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'AnimeSelectorEvent.updateDescription(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDescriptionImplCopyWith<_$UpdateDescriptionImpl> get copyWith =>
      __$$UpdateDescriptionImplCopyWithImpl<_$UpdateDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleSearchMode,
    required TResult Function(AnimeModel selectedAnime) selectAnime,
    required TResult Function(String description) updateDescription,
    required TResult Function(String query) performSearch,
    required TResult Function(bool needUpdatePagination, int page)
        updatePagination,
  }) {
    return updateDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleSearchMode,
    TResult? Function(AnimeModel selectedAnime)? selectAnime,
    TResult? Function(String description)? updateDescription,
    TResult? Function(String query)? performSearch,
    TResult? Function(bool needUpdatePagination, int page)? updatePagination,
  }) {
    return updateDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleSearchMode,
    TResult Function(AnimeModel selectedAnime)? selectAnime,
    TResult Function(String description)? updateDescription,
    TResult Function(String query)? performSearch,
    TResult Function(bool needUpdatePagination, int page)? updatePagination,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSearchMode value) toggleSearchMode,
    required TResult Function(_SelectAnime value) selectAnime,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_UpdatePagination value) updatePagination,
  }) {
    return updateDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult? Function(_SelectAnime value)? selectAnime,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_UpdatePagination value)? updatePagination,
  }) {
    return updateDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult Function(_SelectAnime value)? selectAnime,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_UpdatePagination value)? updatePagination,
    required TResult orElse(),
  }) {
    if (updateDescription != null) {
      return updateDescription(this);
    }
    return orElse();
  }
}

abstract class _UpdateDescription implements AnimeSelectorEvent {
  const factory _UpdateDescription(final String description) =
      _$UpdateDescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$UpdateDescriptionImplCopyWith<_$UpdateDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformSearchImplCopyWith<$Res> {
  factory _$$PerformSearchImplCopyWith(
          _$PerformSearchImpl value, $Res Function(_$PerformSearchImpl) then) =
      __$$PerformSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$PerformSearchImplCopyWithImpl<$Res>
    extends _$AnimeSelectorEventCopyWithImpl<$Res, _$PerformSearchImpl>
    implements _$$PerformSearchImplCopyWith<$Res> {
  __$$PerformSearchImplCopyWithImpl(
      _$PerformSearchImpl _value, $Res Function(_$PerformSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$PerformSearchImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PerformSearchImpl implements _PerformSearch {
  const _$PerformSearchImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AnimeSelectorEvent.performSearch(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformSearchImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformSearchImplCopyWith<_$PerformSearchImpl> get copyWith =>
      __$$PerformSearchImplCopyWithImpl<_$PerformSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleSearchMode,
    required TResult Function(AnimeModel selectedAnime) selectAnime,
    required TResult Function(String description) updateDescription,
    required TResult Function(String query) performSearch,
    required TResult Function(bool needUpdatePagination, int page)
        updatePagination,
  }) {
    return performSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleSearchMode,
    TResult? Function(AnimeModel selectedAnime)? selectAnime,
    TResult? Function(String description)? updateDescription,
    TResult? Function(String query)? performSearch,
    TResult? Function(bool needUpdatePagination, int page)? updatePagination,
  }) {
    return performSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleSearchMode,
    TResult Function(AnimeModel selectedAnime)? selectAnime,
    TResult Function(String description)? updateDescription,
    TResult Function(String query)? performSearch,
    TResult Function(bool needUpdatePagination, int page)? updatePagination,
    required TResult orElse(),
  }) {
    if (performSearch != null) {
      return performSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSearchMode value) toggleSearchMode,
    required TResult Function(_SelectAnime value) selectAnime,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_UpdatePagination value) updatePagination,
  }) {
    return performSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult? Function(_SelectAnime value)? selectAnime,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_UpdatePagination value)? updatePagination,
  }) {
    return performSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult Function(_SelectAnime value)? selectAnime,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_UpdatePagination value)? updatePagination,
    required TResult orElse(),
  }) {
    if (performSearch != null) {
      return performSearch(this);
    }
    return orElse();
  }
}

abstract class _PerformSearch implements AnimeSelectorEvent {
  const factory _PerformSearch(final String query) = _$PerformSearchImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$PerformSearchImplCopyWith<_$PerformSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaginationImplCopyWith<$Res> {
  factory _$$UpdatePaginationImplCopyWith(_$UpdatePaginationImpl value,
          $Res Function(_$UpdatePaginationImpl) then) =
      __$$UpdatePaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool needUpdatePagination, int page});
}

/// @nodoc
class __$$UpdatePaginationImplCopyWithImpl<$Res>
    extends _$AnimeSelectorEventCopyWithImpl<$Res, _$UpdatePaginationImpl>
    implements _$$UpdatePaginationImplCopyWith<$Res> {
  __$$UpdatePaginationImplCopyWithImpl(_$UpdatePaginationImpl _value,
      $Res Function(_$UpdatePaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needUpdatePagination = null,
    Object? page = null,
  }) {
    return _then(_$UpdatePaginationImpl(
      needUpdatePagination: null == needUpdatePagination
          ? _value.needUpdatePagination
          : needUpdatePagination // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdatePaginationImpl implements _UpdatePagination {
  const _$UpdatePaginationImpl(
      {required this.needUpdatePagination, required this.page});

  @override
  final bool needUpdatePagination;
  @override
  final int page;

  @override
  String toString() {
    return 'AnimeSelectorEvent.updatePagination(needUpdatePagination: $needUpdatePagination, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaginationImpl &&
            (identical(other.needUpdatePagination, needUpdatePagination) ||
                other.needUpdatePagination == needUpdatePagination) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, needUpdatePagination, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaginationImplCopyWith<_$UpdatePaginationImpl> get copyWith =>
      __$$UpdatePaginationImplCopyWithImpl<_$UpdatePaginationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleSearchMode,
    required TResult Function(AnimeModel selectedAnime) selectAnime,
    required TResult Function(String description) updateDescription,
    required TResult Function(String query) performSearch,
    required TResult Function(bool needUpdatePagination, int page)
        updatePagination,
  }) {
    return updatePagination(needUpdatePagination, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleSearchMode,
    TResult? Function(AnimeModel selectedAnime)? selectAnime,
    TResult? Function(String description)? updateDescription,
    TResult? Function(String query)? performSearch,
    TResult? Function(bool needUpdatePagination, int page)? updatePagination,
  }) {
    return updatePagination?.call(needUpdatePagination, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleSearchMode,
    TResult Function(AnimeModel selectedAnime)? selectAnime,
    TResult Function(String description)? updateDescription,
    TResult Function(String query)? performSearch,
    TResult Function(bool needUpdatePagination, int page)? updatePagination,
    required TResult orElse(),
  }) {
    if (updatePagination != null) {
      return updatePagination(needUpdatePagination, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleSearchMode value) toggleSearchMode,
    required TResult Function(_SelectAnime value) selectAnime,
    required TResult Function(_UpdateDescription value) updateDescription,
    required TResult Function(_PerformSearch value) performSearch,
    required TResult Function(_UpdatePagination value) updatePagination,
  }) {
    return updatePagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult? Function(_SelectAnime value)? selectAnime,
    TResult? Function(_UpdateDescription value)? updateDescription,
    TResult? Function(_PerformSearch value)? performSearch,
    TResult? Function(_UpdatePagination value)? updatePagination,
  }) {
    return updatePagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleSearchMode value)? toggleSearchMode,
    TResult Function(_SelectAnime value)? selectAnime,
    TResult Function(_UpdateDescription value)? updateDescription,
    TResult Function(_PerformSearch value)? performSearch,
    TResult Function(_UpdatePagination value)? updatePagination,
    required TResult orElse(),
  }) {
    if (updatePagination != null) {
      return updatePagination(this);
    }
    return orElse();
  }
}

abstract class _UpdatePagination implements AnimeSelectorEvent {
  const factory _UpdatePagination(
      {required final bool needUpdatePagination,
      required final int page}) = _$UpdatePaginationImpl;

  bool get needUpdatePagination;
  int get page;
  @JsonKey(ignore: true)
  _$$UpdatePaginationImplCopyWith<_$UpdatePaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnimeSelectorState {
  bool get isSearchMode => throw _privateConstructorUsedError;
  AnimeModel? get selectedAnime => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get needUpdatePagination => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeSelectorStateCopyWith<AnimeSelectorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeSelectorStateCopyWith<$Res> {
  factory $AnimeSelectorStateCopyWith(
          AnimeSelectorState value, $Res Function(AnimeSelectorState) then) =
      _$AnimeSelectorStateCopyWithImpl<$Res, AnimeSelectorState>;
  @useResult
  $Res call(
      {bool isSearchMode,
      AnimeModel? selectedAnime,
      String? description,
      int page,
      bool needUpdatePagination,
      String searchText});

  $AnimeModelCopyWith<$Res>? get selectedAnime;
}

/// @nodoc
class _$AnimeSelectorStateCopyWithImpl<$Res, $Val extends AnimeSelectorState>
    implements $AnimeSelectorStateCopyWith<$Res> {
  _$AnimeSelectorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearchMode = null,
    Object? selectedAnime = freezed,
    Object? description = freezed,
    Object? page = null,
    Object? needUpdatePagination = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      isSearchMode: null == isSearchMode
          ? _value.isSearchMode
          : isSearchMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnime: freezed == selectedAnime
          ? _value.selectedAnime
          : selectedAnime // ignore: cast_nullable_to_non_nullable
              as AnimeModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      needUpdatePagination: null == needUpdatePagination
          ? _value.needUpdatePagination
          : needUpdatePagination // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnimeModelCopyWith<$Res>? get selectedAnime {
    if (_value.selectedAnime == null) {
      return null;
    }

    return $AnimeModelCopyWith<$Res>(_value.selectedAnime!, (value) {
      return _then(_value.copyWith(selectedAnime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnimeSelectorStateImplCopyWith<$Res>
    implements $AnimeSelectorStateCopyWith<$Res> {
  factory _$$AnimeSelectorStateImplCopyWith(_$AnimeSelectorStateImpl value,
          $Res Function(_$AnimeSelectorStateImpl) then) =
      __$$AnimeSelectorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSearchMode,
      AnimeModel? selectedAnime,
      String? description,
      int page,
      bool needUpdatePagination,
      String searchText});

  @override
  $AnimeModelCopyWith<$Res>? get selectedAnime;
}

/// @nodoc
class __$$AnimeSelectorStateImplCopyWithImpl<$Res>
    extends _$AnimeSelectorStateCopyWithImpl<$Res, _$AnimeSelectorStateImpl>
    implements _$$AnimeSelectorStateImplCopyWith<$Res> {
  __$$AnimeSelectorStateImplCopyWithImpl(_$AnimeSelectorStateImpl _value,
      $Res Function(_$AnimeSelectorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearchMode = null,
    Object? selectedAnime = freezed,
    Object? description = freezed,
    Object? page = null,
    Object? needUpdatePagination = null,
    Object? searchText = null,
  }) {
    return _then(_$AnimeSelectorStateImpl(
      isSearchMode: null == isSearchMode
          ? _value.isSearchMode
          : isSearchMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnime: freezed == selectedAnime
          ? _value.selectedAnime
          : selectedAnime // ignore: cast_nullable_to_non_nullable
              as AnimeModel?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      needUpdatePagination: null == needUpdatePagination
          ? _value.needUpdatePagination
          : needUpdatePagination // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnimeSelectorStateImpl implements _AnimeSelectorState {
  const _$AnimeSelectorStateImpl(
      {this.isSearchMode = false,
      this.selectedAnime,
      this.description,
      this.page = 1,
      this.needUpdatePagination = false,
      this.searchText = ''});

  @override
  @JsonKey()
  final bool isSearchMode;
  @override
  final AnimeModel? selectedAnime;
  @override
  final String? description;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool needUpdatePagination;
  @override
  @JsonKey()
  final String searchText;

  @override
  String toString() {
    return 'AnimeSelectorState(isSearchMode: $isSearchMode, selectedAnime: $selectedAnime, description: $description, page: $page, needUpdatePagination: $needUpdatePagination, searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeSelectorStateImpl &&
            (identical(other.isSearchMode, isSearchMode) ||
                other.isSearchMode == isSearchMode) &&
            (identical(other.selectedAnime, selectedAnime) ||
                other.selectedAnime == selectedAnime) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.needUpdatePagination, needUpdatePagination) ||
                other.needUpdatePagination == needUpdatePagination) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearchMode, selectedAnime,
      description, page, needUpdatePagination, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeSelectorStateImplCopyWith<_$AnimeSelectorStateImpl> get copyWith =>
      __$$AnimeSelectorStateImplCopyWithImpl<_$AnimeSelectorStateImpl>(
          this, _$identity);
}

abstract class _AnimeSelectorState implements AnimeSelectorState {
  const factory _AnimeSelectorState(
      {final bool isSearchMode,
      final AnimeModel? selectedAnime,
      final String? description,
      final int page,
      final bool needUpdatePagination,
      final String searchText}) = _$AnimeSelectorStateImpl;

  @override
  bool get isSearchMode;
  @override
  AnimeModel? get selectedAnime;
  @override
  String? get description;
  @override
  int get page;
  @override
  bool get needUpdatePagination;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$AnimeSelectorStateImplCopyWith<_$AnimeSelectorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
