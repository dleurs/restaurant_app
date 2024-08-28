import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

part 'table_reservation_entity.freezed.dart';
part 'table_reservation_entity.g.dart';

@freezed
class TableReservationEntity with _$TableReservationEntity {
  const factory TableReservationEntity({
    required String name,
    String? reservedBy,
    required int numberChair,
  }) = _TableReservationEntity;

  factory TableReservationEntity.fromJson(Map<String, Object?> json) =>
      _$TableReservationEntityFromJson(json);
}


enum Availability {
  available,
  reserved,
}