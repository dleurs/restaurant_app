// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tables_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TablesState {
  BlocState get blocState => throw _privateConstructorUsedError;
  List<TableEntity> get allTables => throw _privateConstructorUsedError;

  /// Create a copy of TablesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TablesStateCopyWith<TablesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TablesStateCopyWith<$Res> {
  factory $TablesStateCopyWith(
          TablesState value, $Res Function(TablesState) then) =
      _$TablesStateCopyWithImpl<$Res, TablesState>;
  @useResult
  $Res call({BlocState blocState, List<TableEntity> allTables});
}

/// @nodoc
class _$TablesStateCopyWithImpl<$Res, $Val extends TablesState>
    implements $TablesStateCopyWith<$Res> {
  _$TablesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TablesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? allTables = null,
  }) {
    return _then(_value.copyWith(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      allTables: null == allTables
          ? _value.allTables
          : allTables // ignore: cast_nullable_to_non_nullable
              as List<TableEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TablesStateImplCopyWith<$Res>
    implements $TablesStateCopyWith<$Res> {
  factory _$$TablesStateImplCopyWith(
          _$TablesStateImpl value, $Res Function(_$TablesStateImpl) then) =
      __$$TablesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BlocState blocState, List<TableEntity> allTables});
}

/// @nodoc
class __$$TablesStateImplCopyWithImpl<$Res>
    extends _$TablesStateCopyWithImpl<$Res, _$TablesStateImpl>
    implements _$$TablesStateImplCopyWith<$Res> {
  __$$TablesStateImplCopyWithImpl(
      _$TablesStateImpl _value, $Res Function(_$TablesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TablesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocState = null,
    Object? allTables = null,
  }) {
    return _then(_$TablesStateImpl(
      blocState: null == blocState
          ? _value.blocState
          : blocState // ignore: cast_nullable_to_non_nullable
              as BlocState,
      allTables: null == allTables
          ? _value._allTables
          : allTables // ignore: cast_nullable_to_non_nullable
              as List<TableEntity>,
    ));
  }
}

/// @nodoc

class _$TablesStateImpl implements _TablesState {
  const _$TablesStateImpl(
      {this.blocState = BlocState.init,
      final List<TableEntity> allTables = const []})
      : _allTables = allTables;

  @override
  @JsonKey()
  final BlocState blocState;
  final List<TableEntity> _allTables;
  @override
  @JsonKey()
  List<TableEntity> get allTables {
    if (_allTables is EqualUnmodifiableListView) return _allTables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTables);
  }

  @override
  String toString() {
    return 'TablesState(blocState: $blocState, allTables: $allTables)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TablesStateImpl &&
            (identical(other.blocState, blocState) ||
                other.blocState == blocState) &&
            const DeepCollectionEquality()
                .equals(other._allTables, _allTables));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, blocState, const DeepCollectionEquality().hash(_allTables));

  /// Create a copy of TablesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TablesStateImplCopyWith<_$TablesStateImpl> get copyWith =>
      __$$TablesStateImplCopyWithImpl<_$TablesStateImpl>(this, _$identity);
}

abstract class _TablesState implements TablesState {
  const factory _TablesState(
      {final BlocState blocState,
      final List<TableEntity> allTables}) = _$TablesStateImpl;

  @override
  BlocState get blocState;
  @override
  List<TableEntity> get allTables;

  /// Create a copy of TablesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TablesStateImplCopyWith<_$TablesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
