// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_table_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookTableState {
  BlocState get blocState => throw _privateConstructorUsedError;
  String get reservedSlotDay => throw _privateConstructorUsedError;
  String get reservedSlotHour => throw _privateConstructorUsedError;
  List<String> get tablesId => throw _privateConstructorUsedError;
  List<TableReservationEntity> get tableReservation =>
      throw _privateConstructorUsedError;

  /// Create a copy of BookTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookTableStateCopyWith<BookTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookTableStateCopyWith<$Res> {
  factory $BookTableStateCopyWith(
          BookTableState value, $Res Function(BookTableState) then) =
      _$BookTableStateCopyWithImpl<$Res, BookTableState>;
  @useResult
  $Res call(
      {BlocState blocState,
      String reservedSlotDay,
      String reservedSlotHour,
      List<String> tablesId,
      List<TableReservationEntity> tableReservation});
}

/// @nodoc
class _$BookTableStateCopyWithImpl<$Res, $Val extends BookTableState>
    implements $BookTableStateCopyWith<$Res> {
  _$BookTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? reservedSlotDay = null,
    Object? reservedSlotHour = null,
    Object? tablesId = null,
    Object? tableReservation = null,
  }) {
    return _then(_value.copyWith(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      reservedSlotDay: null == reservedSlotDay
          ? _value.reservedSlotDay
          : reservedSlotDay // ignore: cast_nullable_to_non_nullable
              as String,
      reservedSlotHour: null == reservedSlotHour
          ? _value.reservedSlotHour
          : reservedSlotHour // ignore: cast_nullable_to_non_nullable
              as String,
      tablesId: null == tablesId
          ? _value.tablesId
          : tablesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tableReservation: null == tableReservation
          ? _value.tableReservation
          : tableReservation // ignore: cast_nullable_to_non_nullable
              as List<TableReservationEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookTableStateImplCopyWith<$Res>
    implements $BookTableStateCopyWith<$Res> {
  factory _$$BookTableStateImplCopyWith(_$BookTableStateImpl value,
          $Res Function(_$BookTableStateImpl) then) =
      __$$BookTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocState blocState,
      String reservedSlotDay,
      String reservedSlotHour,
      List<String> tablesId,
      List<TableReservationEntity> tableReservation});
}

/// @nodoc
class __$$BookTableStateImplCopyWithImpl<$Res>
    extends _$BookTableStateCopyWithImpl<$Res, _$BookTableStateImpl>
    implements _$$BookTableStateImplCopyWith<$Res> {
  __$$BookTableStateImplCopyWithImpl(
      _$BookTableStateImpl _value, $Res Function(_$BookTableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? reservedSlotDay = null,
    Object? reservedSlotHour = null,
    Object? tablesId = null,
    Object? tableReservation = null,
  }) {
    return _then(_$BookTableStateImpl(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      reservedSlotDay: null == reservedSlotDay
          ? _value.reservedSlotDay
          : reservedSlotDay // ignore: cast_nullable_to_non_nullable
              as String,
      reservedSlotHour: null == reservedSlotHour
          ? _value.reservedSlotHour
          : reservedSlotHour // ignore: cast_nullable_to_non_nullable
              as String,
      tablesId: null == tablesId
          ? _value._tablesId
          : tablesId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tableReservation: null == tableReservation
          ? _value._tableReservation
          : tableReservation // ignore: cast_nullable_to_non_nullable
              as List<TableReservationEntity>,
    ));
  }
}

/// @nodoc

class _$BookTableStateImpl implements _BookTableState {
  const _$BookTableStateImpl(
      {this.blocState = BlocState.init,
      required this.reservedSlotDay,
      required this.reservedSlotHour,
      required final List<String> tablesId,
      final List<TableReservationEntity> tableReservation = const []})
      : _tablesId = tablesId,
        _tableReservation = tableReservation;

  @override
  @JsonKey()
  final BlocState blocState;
  @override
  final String reservedSlotDay;
  @override
  final String reservedSlotHour;
  final List<String> _tablesId;
  @override
  List<String> get tablesId {
    if (_tablesId is EqualUnmodifiableListView) return _tablesId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tablesId);
  }

  final List<TableReservationEntity> _tableReservation;
  @override
  @JsonKey()
  List<TableReservationEntity> get tableReservation {
    if (_tableReservation is EqualUnmodifiableListView)
      return _tableReservation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tableReservation);
  }

  @override
  String toString() {
    return 'BookTableState(blocState: $blocState, reservedSlotDay: $reservedSlotDay, reservedSlotHour: $reservedSlotHour, tablesId: $tablesId, tableReservation: $tableReservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookTableStateImpl &&
            (identical(other.blocState, blocState) ||
                other.blocState == blocState) &&
            (identical(other.reservedSlotDay, reservedSlotDay) ||
                other.reservedSlotDay == reservedSlotDay) &&
            (identical(other.reservedSlotHour, reservedSlotHour) ||
                other.reservedSlotHour == reservedSlotHour) &&
            const DeepCollectionEquality().equals(other._tablesId, _tablesId) &&
            const DeepCollectionEquality()
                .equals(other._tableReservation, _tableReservation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      blocState,
      reservedSlotDay,
      reservedSlotHour,
      const DeepCollectionEquality().hash(_tablesId),
      const DeepCollectionEquality().hash(_tableReservation));

  /// Create a copy of BookTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookTableStateImplCopyWith<_$BookTableStateImpl> get copyWith =>
      __$$BookTableStateImplCopyWithImpl<_$BookTableStateImpl>(
          this, _$identity);
}

abstract class _BookTableState implements BookTableState {
  const factory _BookTableState(
          {final BlocState blocState,
          required final String reservedSlotDay,
          required final String reservedSlotHour,
          required final List<String> tablesId,
          final List<TableReservationEntity> tableReservation}) =
      _$BookTableStateImpl;

  @override
  BlocState get blocState;
  @override
  String get reservedSlotDay;
  @override
  String get reservedSlotHour;
  @override
  List<String> get tablesId;
  @override
  List<TableReservationEntity> get tableReservation;

  /// Create a copy of BookTableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookTableStateImplCopyWith<_$BookTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
