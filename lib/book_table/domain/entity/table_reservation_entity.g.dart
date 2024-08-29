// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_reservation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableReservationEntityImpl _$$TableReservationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TableReservationEntityImpl(
      tableId: json['tableId'] as String,
      reservedBy: json['reservedBy'] as String?,
    );

Map<String, dynamic> _$$TableReservationEntityImplToJson(
        _$TableReservationEntityImpl instance) =>
    <String, dynamic>{
      'tableId': instance.tableId,
      'reservedBy': instance.reservedBy,
    };
