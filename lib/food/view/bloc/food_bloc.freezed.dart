// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) search,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? search,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? search,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodSearchEvent value) search,
    required TResult Function(_FoodLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodSearchEvent value)? search,
    TResult? Function(_FoodLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodSearchEvent value)? search,
    TResult Function(_FoodLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodEventCopyWith<$Res> {
  factory $FoodEventCopyWith(FoodEvent value, $Res Function(FoodEvent) then) =
      _$FoodEventCopyWithImpl<$Res, FoodEvent>;
}

/// @nodoc
class _$FoodEventCopyWithImpl<$Res, $Val extends FoodEvent>
    implements $FoodEventCopyWith<$Res> {
  _$FoodEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FoodSearchEventImplCopyWith<$Res> {
  factory _$$FoodSearchEventImplCopyWith(_$FoodSearchEventImpl value,
          $Res Function(_$FoodSearchEventImpl) then) =
      __$$FoodSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$FoodSearchEventImplCopyWithImpl<$Res>
    extends _$FoodEventCopyWithImpl<$Res, _$FoodSearchEventImpl>
    implements _$$FoodSearchEventImplCopyWith<$Res> {
  __$$FoodSearchEventImplCopyWithImpl(
      _$FoodSearchEventImpl _value, $Res Function(_$FoodSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$FoodSearchEventImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodSearchEventImpl implements _FoodSearchEvent {
  const _$FoodSearchEventImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'FoodEvent.search(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodSearchEventImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  /// Create a copy of FoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodSearchEventImplCopyWith<_$FoodSearchEventImpl> get copyWith =>
      __$$FoodSearchEventImplCopyWithImpl<_$FoodSearchEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) search,
    required TResult Function() load,
  }) {
    return search(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? search,
    TResult? Function()? load,
  }) {
    return search?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? search,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodSearchEvent value) search,
    required TResult Function(_FoodLoadEvent value) load,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodSearchEvent value)? search,
    TResult? Function(_FoodLoadEvent value)? load,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodSearchEvent value)? search,
    TResult Function(_FoodLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _FoodSearchEvent implements FoodEvent {
  const factory _FoodSearchEvent({required final String searchText}) =
      _$FoodSearchEventImpl;

  String get searchText;

  /// Create a copy of FoodEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodSearchEventImplCopyWith<_$FoodSearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FoodLoadEventImplCopyWith<$Res> {
  factory _$$FoodLoadEventImplCopyWith(
          _$FoodLoadEventImpl value, $Res Function(_$FoodLoadEventImpl) then) =
      __$$FoodLoadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FoodLoadEventImplCopyWithImpl<$Res>
    extends _$FoodEventCopyWithImpl<$Res, _$FoodLoadEventImpl>
    implements _$$FoodLoadEventImplCopyWith<$Res> {
  __$$FoodLoadEventImplCopyWithImpl(
      _$FoodLoadEventImpl _value, $Res Function(_$FoodLoadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FoodLoadEventImpl implements _FoodLoadEvent {
  const _$FoodLoadEventImpl();

  @override
  String toString() {
    return 'FoodEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FoodLoadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) search,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? search,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? search,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FoodSearchEvent value) search,
    required TResult Function(_FoodLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FoodSearchEvent value)? search,
    TResult? Function(_FoodLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FoodSearchEvent value)? search,
    TResult Function(_FoodLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _FoodLoadEvent implements FoodEvent {
  const factory _FoodLoadEvent() = _$FoodLoadEventImpl;
}

/// @nodoc
mixin _$FoodState {
  BlocState get blocState => throw _privateConstructorUsedError;
  List<FoodEntity> get allFood => throw _privateConstructorUsedError;
  List<FoodEntity> get filteredFood => throw _privateConstructorUsedError;

  /// Create a copy of FoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodStateCopyWith<FoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodStateCopyWith<$Res> {
  factory $FoodStateCopyWith(FoodState value, $Res Function(FoodState) then) =
      _$FoodStateCopyWithImpl<$Res, FoodState>;
  @useResult
  $Res call(
      {BlocState blocState,
      List<FoodEntity> allFood,
      List<FoodEntity> filteredFood});
}

/// @nodoc
class _$FoodStateCopyWithImpl<$Res, $Val extends FoodState>
    implements $FoodStateCopyWith<$Res> {
  _$FoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? allFood = null,
    Object? filteredFood = null,
  }) {
    return _then(_value.copyWith(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      allFood: null == allFood
          ? _value.allFood
          : allFood // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
      filteredFood: null == filteredFood
          ? _value.filteredFood
          : filteredFood // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodStateImplCopyWith<$Res>
    implements $FoodStateCopyWith<$Res> {
  factory _$$FoodStateImplCopyWith(
          _$FoodStateImpl value, $Res Function(_$FoodStateImpl) then) =
      __$$FoodStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocState blocState,
      List<FoodEntity> allFood,
      List<FoodEntity> filteredFood});
}

/// @nodoc
class __$$FoodStateImplCopyWithImpl<$Res>
    extends _$FoodStateCopyWithImpl<$Res, _$FoodStateImpl>
    implements _$$FoodStateImplCopyWith<$Res> {
  __$$FoodStateImplCopyWithImpl(
      _$FoodStateImpl _value, $Res Function(_$FoodStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? allFood = null,
    Object? filteredFood = null,
  }) {
    return _then(_$FoodStateImpl(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      allFood: null == allFood
          ? _value._allFood
          : allFood // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
      filteredFood: null == filteredFood
          ? _value._filteredFood
          : filteredFood // ignore: cast_nullable_to_non_nullable
              as List<FoodEntity>,
    ));
  }
}

/// @nodoc

class _$FoodStateImpl implements _FoodState {
  const _$FoodStateImpl(
      {this.blocState = BlocState.init,
      final List<FoodEntity> allFood = const [],
      final List<FoodEntity> filteredFood = const []})
      : _allFood = allFood,
        _filteredFood = filteredFood;

  @override
  @JsonKey()
  final BlocState blocState;
  final List<FoodEntity> _allFood;
  @override
  @JsonKey()
  List<FoodEntity> get allFood {
    if (_allFood is EqualUnmodifiableListView) return _allFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allFood);
  }

  final List<FoodEntity> _filteredFood;
  @override
  @JsonKey()
  List<FoodEntity> get filteredFood {
    if (_filteredFood is EqualUnmodifiableListView) return _filteredFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredFood);
  }

  @override
  String toString() {
    return 'FoodState(blocState: $blocState, allFood: $allFood, filteredFood: $filteredFood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodStateImpl &&
            (identical(other.blocState, blocState) ||
                other.blocState == blocState) &&
            const DeepCollectionEquality().equals(other._allFood, _allFood) &&
            const DeepCollectionEquality()
                .equals(other._filteredFood, _filteredFood));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      blocState,
      const DeepCollectionEquality().hash(_allFood),
      const DeepCollectionEquality().hash(_filteredFood));

  /// Create a copy of FoodState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodStateImplCopyWith<_$FoodStateImpl> get copyWith =>
      __$$FoodStateImplCopyWithImpl<_$FoodStateImpl>(this, _$identity);
}

abstract class _FoodState implements FoodState {
  const factory _FoodState(
      {final BlocState blocState,
      final List<FoodEntity> allFood,
      final List<FoodEntity> filteredFood}) = _$FoodStateImpl;

  @override
  BlocState get blocState;
  @override
  List<FoodEntity> get allFood;
  @override
  List<FoodEntity> get filteredFood;

  /// Create a copy of FoodState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodStateImplCopyWith<_$FoodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
