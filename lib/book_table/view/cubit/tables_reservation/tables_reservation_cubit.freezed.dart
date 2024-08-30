// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tables_reservation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TablesReservationState {
  BlocState get blocState => throw _privateConstructorUsedError;
  String get reservedSlotDay => throw _privateConstructorUsedError;
  String get reservedSlotHour => throw _privateConstructorUsedError;
  List<TableReservationEntity> get tablesReservation =>
      throw _privateConstructorUsedError;

  /// Create a copy of TablesReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TablesReservationStateCopyWith<TablesReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TablesReservationStateCopyWith<$Res> {
  factory $TablesReservationStateCopyWith(TablesReservationState value,
          $Res Function(TablesReservationState) then) =
      _$TablesReservationStateCopyWithImpl<$Res, TablesReservationState>;
  @useResult
  $Res call(
      {BlocState blocState,
      String reservedSlotDay,
      String reservedSlotHour,
      List<TableReservationEntity> tablesReservation});
}

/// @nodoc
class _$TablesReservationStateCopyWithImpl<$Res,
        $Val extends TablesReservationState>
    implements $TablesReservationStateCopyWith<$Res> {
  _$TablesReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TablesReservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? reservedSlotDay = null,
    Object? reservedSlotHour = null,
    Object? tablesReservation = null,
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
      tablesReservation: null == tablesReservation
          ? _value.tablesReservation
          : tablesReservation // ignore: cast_nullable_to_non_nullable
              as List<TableReservationEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TablesReservationStateImplCopyWith<$Res>
    implements $TablesReservationStateCopyWith<$Res> {
  factory _$$TablesReservationStateImplCopyWith(
          _$TablesReservationStateImpl value,
          $Res Function(_$TablesReservationStateImpl) then) =
      __$$TablesReservationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocState blocState,
      String reservedSlotDay,
      String reservedSlotHour,
      List<TableReservationEntity> tablesReservation});
}

/// @nodoc
class __$$TablesReservationStateImplCopyWithImpl<$Res>
    extends _$TablesReservationStateCopyWithImpl<$Res,
        _$TablesReservationStateImpl>
    implements _$$TablesReservationStateImplCopyWith<$Res> {
  __$$TablesReservationStateImplCopyWithImpl(
      _$TablesReservationStateImpl _value,
      $Res Function(_$TablesReservationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TablesReservationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? reservedSlotDay = null,
    Object? reservedSlotHour = null,
    Object? tablesReservation = null,
  }) {
    return _then(_$TablesReservationStateImpl(
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
      tablesReservation: null == tablesReservation
          ? _value._tablesReservation
          : tablesReservation // ignore: cast_nullable_to_non_nullable
              as List<TableReservationEntity>,
    ));
  }
}

/// @nodoc

class _$TablesReservationStateImpl implements _TablesReservationState {
  const _$TablesReservationStateImpl(
      {this.blocState = BlocState.init,
      required this.reservedSlotDay,
      required this.reservedSlotHour,
      final List<TableReservationEntity> tablesReservation = const []})
      : _tablesReservation = tablesReservation;

  @override
  @JsonKey()
  final BlocState blocState;
  @override
  final String reservedSlotDay;
  @override
  final String reservedSlotHour;
  final List<TableReservationEntity> _tablesReservation;
  @override
  @JsonKey()
  List<TableReservationEntity> get tablesReservation {
    if (_tablesReservation is EqualUnmodifiableListView)
      return _tablesReservation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tablesReservation);
  }

  @override
  String toString() {
    return 'TablesReservationState(blocState: $blocState, reservedSlotDay: $reservedSlotDay, reservedSlotHour: $reservedSlotHour, tablesReservation: $tablesReservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TablesReservationStateImpl &&
            (identical(other.blocState, blocState) ||
                other.blocState == blocState) &&
            (identical(other.reservedSlotDay, reservedSlotDay) ||
                other.reservedSlotDay == reservedSlotDay) &&
            (identical(other.reservedSlotHour, reservedSlotHour) ||
                other.reservedSlotHour == reservedSlotHour) &&
            const DeepCollectionEquality()
                .equals(other._tablesReservation, _tablesReservation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      blocState,
      reservedSlotDay,
      reservedSlotHour,
      const DeepCollectionEquality().hash(_tablesReservation));

  /// Create a copy of TablesReservationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TablesReservationStateImplCopyWith<_$TablesReservationStateImpl>
      get copyWith => __$$TablesReservationStateImplCopyWithImpl<
          _$TablesReservationStateImpl>(this, _$identity);
}

abstract class _TablesReservationState implements TablesReservationState {
  const factory _TablesReservationState(
          {final BlocState blocState,
          required final String reservedSlotDay,
          required final String reservedSlotHour,
          final List<TableReservationEntity> tablesReservation}) =
      _$TablesReservationStateImpl;

  @override
  BlocState get blocState;
  @override
  String get reservedSlotDay;
  @override
  String get reservedSlotHour;
  @override
  List<TableReservationEntity> get tablesReservation;

  /// Create a copy of TablesReservationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TablesReservationStateImplCopyWith<_$TablesReservationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
