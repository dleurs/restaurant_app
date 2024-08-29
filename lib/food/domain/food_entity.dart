import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

part 'food_entity.freezed.dart';
part 'food_entity.g.dart';

@freezed
class FoodEntity with _$FoodEntity {
  const factory FoodEntity({
    required String name,
    required String description,
  }) = _FoodEntity;

  factory FoodEntity.fromJson(Map<String, Object?> json) =>
      _$FoodEntityFromJson(json);
}

//TODO dleurs(#3): Best to create FoodModel and FoodMapper. Reduced for simplicity.
List<FoodEntity> foodsDataToEntity(List<Map<String, dynamic>> listData) {
  return listData
      .where((Map<String, dynamic> data) {
        return (data['name'] as String?).isNotNullOrEmpty &&
            (data['description'] as String?).isNotNullOrEmpty;
      })
      .map((Map<String, dynamic> cleanedData) =>
          FoodEntity.fromJson(cleanedData))
      .toList();
}
