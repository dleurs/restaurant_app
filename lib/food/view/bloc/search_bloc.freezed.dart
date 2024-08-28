// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  String get searchText => throw _privateConstructorUsedError;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchEventImplCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchEventImplCopyWith(
          _$SearchEventImpl value, $Res Function(_$SearchEventImpl) then) =
      __$$SearchEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$SearchEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchEventImpl>
    implements _$$SearchEventImplCopyWith<$Res> {
  __$$SearchEventImplCopyWithImpl(
      _$SearchEventImpl _value, $Res Function(_$SearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$SearchEventImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventImpl implements _SearchEvent {
  const _$SearchEventImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchEvent(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      __$$SearchEventImplCopyWithImpl<_$SearchEventImpl>(this, _$identity);
}

abstract class _SearchEvent implements SearchEvent {
  const factory _SearchEvent({required final String searchText}) =
      _$SearchEventImpl;

  @override
  String get searchText;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchEventImplCopyWith<_$SearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  BlocState get blocState => throw _privateConstructorUsedError;
  List<FoodEntity> get allFood => throw _privateConstructorUsedError;
  List<FoodEntity> get filteredFood => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {BlocState blocState,
      List<FoodEntity> allFood,
      List<FoodEntity> filteredFood,
      String? errorMessage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? allFood = null,
    Object? filteredFood = null,
    Object? errorMessage = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocState blocState,
      List<FoodEntity> allFood,
      List<FoodEntity> filteredFood,
      String? errorMessage});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? allFood = null,
    Object? filteredFood = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SearchStateImpl(
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.blocState = BlocState.init,
      required final List<FoodEntity> allFood,
      required final List<FoodEntity> filteredFood,
      this.errorMessage})
      : _allFood = allFood,
        _filteredFood = filteredFood;

  @override
  @JsonKey()
  final BlocState blocState;
  final List<FoodEntity> _allFood;
  @override
  List<FoodEntity> get allFood {
    if (_allFood is EqualUnmodifiableListView) return _allFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allFood);
  }

  final List<FoodEntity> _filteredFood;
  @override
  List<FoodEntity> get filteredFood {
    if (_filteredFood is EqualUnmodifiableListView) return _filteredFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredFood);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchState(blocState: $blocState, allFood: $allFood, filteredFood: $filteredFood, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.blocState, blocState) ||
                other.blocState == blocState) &&
            const DeepCollectionEquality().equals(other._allFood, _allFood) &&
            const DeepCollectionEquality()
                .equals(other._filteredFood, _filteredFood) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      blocState,
      const DeepCollectionEquality().hash(_allFood),
      const DeepCollectionEquality().hash(_filteredFood),
      errorMessage);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final BlocState blocState,
      required final List<FoodEntity> allFood,
      required final List<FoodEntity> filteredFood,
      final String? errorMessage}) = _$SearchStateImpl;

  @override
  BlocState get blocState;
  @override
  List<FoodEntity> get allFood;
  @override
  List<FoodEntity> get filteredFood;
  @override
  String? get errorMessage;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
