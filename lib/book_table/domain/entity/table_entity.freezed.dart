// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableEntity _$TableEntityFromJson(Map<String, dynamic> json) {
  return _TableEntity.fromJson(json);
}

/// @nodoc
mixin _$TableEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get numberChair => throw _privateConstructorUsedError;

  /// Serializes this TableEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TableEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TableEntityCopyWith<TableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableEntityCopyWith<$Res> {
  factory $TableEntityCopyWith(
          TableEntity value, $Res Function(TableEntity) then) =
      _$TableEntityCopyWithImpl<$Res, TableEntity>;
  @useResult
  $Res call({String id, String name, int numberChair});
}

/// @nodoc
class _$TableEntityCopyWithImpl<$Res, $Val extends TableEntity>
    implements $TableEntityCopyWith<$Res> {
  _$TableEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TableEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? numberChair = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberChair: null == numberChair
          ? _value.numberChair
          : numberChair // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableEntityImplCopyWith<$Res>
    implements $TableEntityCopyWith<$Res> {
  factory _$$TableEntityImplCopyWith(
          _$TableEntityImpl value, $Res Function(_$TableEntityImpl) then) =
      __$$TableEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int numberChair});
}

/// @nodoc
class __$$TableEntityImplCopyWithImpl<$Res>
    extends _$TableEntityCopyWithImpl<$Res, _$TableEntityImpl>
    implements _$$TableEntityImplCopyWith<$Res> {
  __$$TableEntityImplCopyWithImpl(
      _$TableEntityImpl _value, $Res Function(_$TableEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TableEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? numberChair = null,
  }) {
    return _then(_$TableEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      numberChair: null == numberChair
          ? _value.numberChair
          : numberChair // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableEntityImpl extends _TableEntity {
  const _$TableEntityImpl(
      {required this.id, required this.name, required this.numberChair})
      : super._();

  factory _$TableEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int numberChair;

  @override
  String toString() {
    return 'TableEntity(id: $id, name: $name, numberChair: $numberChair)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.numberChair, numberChair) ||
                other.numberChair == numberChair));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, numberChair);

  /// Create a copy of TableEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TableEntityImplCopyWith<_$TableEntityImpl> get copyWith =>
      __$$TableEntityImplCopyWithImpl<_$TableEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableEntityImplToJson(
      this,
    );
  }
}

abstract class _TableEntity extends TableEntity {
  const factory _TableEntity(
      {required final String id,
      required final String name,
      required final int numberChair}) = _$TableEntityImpl;
  const _TableEntity._() : super._();

  factory _TableEntity.fromJson(Map<String, dynamic> json) =
      _$TableEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get numberChair;

  /// Create a copy of TableEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TableEntityImplCopyWith<_$TableEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
