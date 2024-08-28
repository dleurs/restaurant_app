part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(BlocState.init) BlocState blocState,
    required List<FoodEntity> allFood,
    required List<FoodEntity> filteredFood,
    String? errorMessage,
  }) = _SearchState;
}

enum BlocState {
  init,
  success,
  loading,
  error,
}
