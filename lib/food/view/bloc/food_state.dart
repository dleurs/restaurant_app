part of 'food_bloc.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState({
    @Default(BlocState.init) BlocState blocState,
    @Default([]) List<FoodEntity> allFood,
    @Default([]) List<FoodEntity> filteredFood,
    String? errorMessage,
  }) = _FoodState;
}

enum BlocState {
  init,
  success,
  loading,
  error,
}
