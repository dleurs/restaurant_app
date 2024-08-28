part of 'food_bloc.dart';

@freezed
class FoodEvent with _$FoodEvent {
  const factory FoodEvent.search({
    required String searchText,
  }) = _FoodSearchEvent;

  const factory FoodEvent.load() = _FoodLoadEvent;
}
