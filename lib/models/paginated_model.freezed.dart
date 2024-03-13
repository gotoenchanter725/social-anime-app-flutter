// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedModel<T> {
  int get currentPage => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedModelCopyWith<T, PaginatedModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedModelCopyWith<T, $Res> {
  factory $PaginatedModelCopyWith(
          PaginatedModel<T> value, $Res Function(PaginatedModel<T>) then) =
      _$PaginatedModelCopyWithImpl<T, $Res, PaginatedModel<T>>;
  @useResult
  $Res call({int currentPage, List<T> items});
}

/// @nodoc
class _$PaginatedModelCopyWithImpl<T, $Res, $Val extends PaginatedModel<T>>
    implements $PaginatedModelCopyWith<T, $Res> {
  _$PaginatedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedModelImplCopyWith<T, $Res>
    implements $PaginatedModelCopyWith<T, $Res> {
  factory _$$PaginatedModelImplCopyWith(_$PaginatedModelImpl<T> value,
          $Res Function(_$PaginatedModelImpl<T>) then) =
      __$$PaginatedModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int currentPage, List<T> items});
}

/// @nodoc
class __$$PaginatedModelImplCopyWithImpl<T, $Res>
    extends _$PaginatedModelCopyWithImpl<T, $Res, _$PaginatedModelImpl<T>>
    implements _$$PaginatedModelImplCopyWith<T, $Res> {
  __$$PaginatedModelImplCopyWithImpl(_$PaginatedModelImpl<T> _value,
      $Res Function(_$PaginatedModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? items = null,
  }) {
    return _then(_$PaginatedModelImpl<T>(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$PaginatedModelImpl<T> implements _PaginatedModel<T> {
  const _$PaginatedModelImpl(
      {required this.currentPage, required final List<T> items})
      : _items = items;

  @override
  final int currentPage;
  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PaginatedModel<$T>(currentPage: $currentPage, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedModelImpl<T> &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedModelImplCopyWith<T, _$PaginatedModelImpl<T>> get copyWith =>
      __$$PaginatedModelImplCopyWithImpl<T, _$PaginatedModelImpl<T>>(
          this, _$identity);
}

abstract class _PaginatedModel<T> implements PaginatedModel<T> {
  const factory _PaginatedModel(
      {required final int currentPage,
      required final List<T> items}) = _$PaginatedModelImpl<T>;

  @override
  int get currentPage;
  @override
  List<T> get items;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedModelImplCopyWith<T, _$PaginatedModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
