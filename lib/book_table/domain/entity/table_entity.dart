import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

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

//TODO dleurs(#4): Best to create TableModel and TableMapper. Reduced for simplicity.
List<TableEntity> tablesDataToEntity(List<Map<String, dynamic>> listData) {
  return listData
      .where((Map<String, dynamic> data) {
        return (data['id'] as String?).isNotNullOrEmpty &&
            (data['numberChair'] is int);
      })
      .map((Map<String, dynamic> cleanedData) =>
          TableEntity.fromJson(cleanedData))
      .toList();
}
