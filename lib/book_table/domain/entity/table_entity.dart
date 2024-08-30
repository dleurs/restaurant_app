import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_entity.freezed.dart';
part 'table_entity.g.dart';

@freezed
class TableEntity with _$TableEntity {
  const factory TableEntity({
    required String id,
    required int numberChair,
  }) = _TableEntity;

  factory TableEntity.fromJson(Map<String, Object?> json) =>
      _$TableEntityFromJson(json);

  // Required for methods
  const TableEntity._();
}
