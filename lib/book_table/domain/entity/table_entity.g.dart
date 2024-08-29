// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableEntityImpl _$$TableEntityImplFromJson(Map<String, dynamic> json) =>
    _$TableEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      numberChair: (json['numberChair'] as num).toInt(),
    );

Map<String, dynamic> _$$TableEntityImplToJson(_$TableEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numberChair': instance.numberChair,
    };
