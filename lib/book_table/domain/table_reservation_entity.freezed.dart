// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_reservation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableReservationEntity _$TableReservationEntityFromJson(
    Map<String, dynamic> json) {
  return _TableReservationEntity.fromJson(json);
}

/// @nodoc
mixin _$TableReservationEntity {
  String get name => throw _privateConstructorUsedError;
  String? get reservedBy => throw _privateConstructorUsedError;
  int get numberChair => throw _privateConstructorUsedError;

  /// Serializes this TableReservationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableReservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableReservationEntityCopyWith<TableReservationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableReservationEntityCopyWith<$Res> {
  factory $TableReservationEntityCopyWith(TableReservationEntity value,
          $Res Function(TableReservationEntity) then) =
      _$TableReservationEntityCopyWithImpl<$Res, TableReservationEntity>;
  @useResult
  $Res call({String name, String? reservedBy, int numberChair});
}

/// @nodoc
class _$TableReservationEntityCopyWithImpl<$Res,
        $Val extends TableReservationEntity>
    implements $TableReservationEntityCopyWith<$Res> {
  _$TableReservationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableReservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? reservedBy = freezed,
    Object? numberChair = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      reservedBy: freezed == reservedBy
          ? _value.reservedBy
          : reservedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      numberChair: null == numberChair
          ? _value.numberChair
          : numberChair // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableReservationEntityImplCopyWith<$Res>
    implements $TableReservationEntityCopyWith<$Res> {
  factory _$$TableReservationEntityImplCopyWith(
          _$TableReservationEntityImpl value,
          $Res Function(_$TableReservationEntityImpl) then) =
      __$$TableReservationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? reservedBy, int numberChair});
}

/// @nodoc
class __$$TableReservationEntityImplCopyWithImpl<$Res>
    extends _$TableReservationEntityCopyWithImpl<$Res,
        _$TableReservationEntityImpl>
    implements _$$TableReservationEntityImplCopyWith<$Res> {
  __$$TableReservationEntityImplCopyWithImpl(
      _$TableReservationEntityImpl _value,
      $Res Function(_$TableReservationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableReservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? reservedBy = freezed,
    Object? numberChair = null,
  }) {
    return _then(_$TableReservationEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      reservedBy: freezed == reservedBy
          ? _value.reservedBy
          : reservedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      numberChair: null == numberChair
          ? _value.numberChair
          : numberChair // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableReservationEntityImpl implements _TableReservationEntity {
  const _$TableReservationEntityImpl(
      {required this.name, this.reservedBy, required this.numberChair});

  factory _$TableReservationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableReservationEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String? reservedBy;
  @override
  final int numberChair;

  @override
  String toString() {
    return 'TableReservationEntity(name: $name, reservedBy: $reservedBy, numberChair: $numberChair)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableReservationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.reservedBy, reservedBy) ||
                other.reservedBy == reservedBy) &&
            (identical(other.numberChair, numberChair) ||
                other.numberChair == numberChair));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, reservedBy, numberChair);

  /// Create a copy of TableReservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableReservationEntityImplCopyWith<_$TableReservationEntityImpl>
      get copyWith => __$$TableReservationEntityImplCopyWithImpl<
          _$TableReservationEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableReservationEntityImplToJson(
      this,
    );
  }
}

abstract class _TableReservationEntity implements TableReservationEntity {
  const factory _TableReservationEntity(
      {required final String name,
      final String? reservedBy,
      required final int numberChair}) = _$TableReservationEntityImpl;

  factory _TableReservationEntity.fromJson(Map<String, dynamic> json) =
      _$TableReservationEntityImpl.fromJson;

  @override
  String get name;
  @override
  String? get reservedBy;
  @override
  int get numberChair;

  /// Create a copy of TableReservationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableReservationEntityImplCopyWith<_$TableReservationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
