// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodEntity _$FoodEntityFromJson(Map<String, dynamic> json) {
  return _FoodEntity.fromJson(json);
}

/// @nodoc
mixin _$FoodEntity {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this FoodEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FoodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FoodEntityCopyWith<FoodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodEntityCopyWith<$Res> {
  factory $FoodEntityCopyWith(
          FoodEntity value, $Res Function(FoodEntity) then) =
      _$FoodEntityCopyWithImpl<$Res, FoodEntity>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$FoodEntityCopyWithImpl<$Res, $Val extends FoodEntity>
    implements $FoodEntityCopyWith<$Res> {
  _$FoodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FoodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodEntityImplCopyWith<$Res>
    implements $FoodEntityCopyWith<$Res> {
  factory _$$FoodEntityImplCopyWith(
          _$FoodEntityImpl value, $Res Function(_$FoodEntityImpl) then) =
      __$$FoodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$FoodEntityImplCopyWithImpl<$Res>
    extends _$FoodEntityCopyWithImpl<$Res, _$FoodEntityImpl>
    implements _$$FoodEntityImplCopyWith<$Res> {
  __$$FoodEntityImplCopyWithImpl(
      _$FoodEntityImpl _value, $Res Function(_$FoodEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of FoodEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$FoodEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodEntityImpl implements _FoodEntity {
  const _$FoodEntityImpl({required this.name, required this.description});

  factory _$FoodEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodEntityImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'FoodEntity(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of FoodEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodEntityImplCopyWith<_$FoodEntityImpl> get copyWith =>
      __$$FoodEntityImplCopyWithImpl<_$FoodEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodEntityImplToJson(
      this,
    );
  }
}

abstract class _FoodEntity implements FoodEntity {
  const factory _FoodEntity(
      {required final String name,
      required final String description}) = _$FoodEntityImpl;

  factory _FoodEntity.fromJson(Map<String, dynamic> json) =
      _$FoodEntityImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of FoodEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FoodEntityImplCopyWith<_$FoodEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
