import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:dartx/dartx.dart';

part 'table_reservation_entity.freezed.dart';
part 'table_reservation_entity.g.dart';

@freezed
class TableReservationEntity with _$TableReservationEntity {
  const factory TableReservationEntity({
    required String tableId,
    String? reservedBy,
  }) = _TableReservationEntity;

  factory TableReservationEntity.fromJson(Map<String, Object?> json) =>
      _$TableReservationEntityFromJson(json);

  // Required for methods
  const TableReservationEntity._();

  bool canModifyReservation(String? userId) =>
      userId != null && (reservedBy == null || reservedBy == userId);
}
