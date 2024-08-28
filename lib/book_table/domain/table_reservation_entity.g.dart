// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_reservation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableReservationEntityImpl _$$TableReservationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TableReservationEntityImpl(
      name: json['name'] as String,
      reservedBy: json['reservedBy'] as String?,
      numberChair: (json['numberChair'] as num).toInt(),
    );

Map<String, dynamic> _$$TableReservationEntityImplToJson(
        _$TableReservationEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'reservedBy': instance.reservedBy,
      'numberChair': instance.numberChair,
    };
