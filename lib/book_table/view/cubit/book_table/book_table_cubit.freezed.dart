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
  String get tableId => throw _privateConstructorUsedError;

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
      String tableId});
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
    Object? tableId = null,
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
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
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
      String tableId});
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
    Object? tableId = null,
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
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookTableStateImpl implements _BookTableState {
  const _$BookTableStateImpl(
      {this.blocState = BlocState.init,
      required this.reservedSlotDay,
      required this.reservedSlotHour,
      required this.tableId});

  @override
  @JsonKey()
  final BlocState blocState;
  @override
  final String reservedSlotDay;
  @override
  final String reservedSlotHour;
  @override
  final String tableId;

  @override
  String toString() {
    return 'BookTableState(blocState: $blocState, reservedSlotDay: $reservedSlotDay, reservedSlotHour: $reservedSlotHour, tableId: $tableId)';
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
            (identical(other.tableId, tableId) || other.tableId == tableId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, blocState, reservedSlotDay, reservedSlotHour, tableId);

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
      required final String tableId}) = _$BookTableStateImpl;

  @override
  BlocState get blocState;
  @override
  String get reservedSlotDay;
  @override
  String get reservedSlotHour;
  @override
  String get tableId;

  /// Create a copy of BookTableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookTableStateImplCopyWith<_$BookTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
