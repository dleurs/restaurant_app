import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/food/domain/food_entity.dart';
import 'package:stream_transform/stream_transform.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(List<FoodEntity> allFood)
      : super(SearchState(
          allFood: allFood,
          filteredFood: allFood,
        )) {
    on<SearchEvent>((event, emit) async {
      emit(state.copyWith(
        filteredFood: List.of(state.allFood)
            .where((foodEntity) => foodEntity.name
                .toLowerCase()
                .contains(event.searchText.toLowerCase()))
            .toList(),
        blocState: BlocState.success,
      ));
    });
    //,transformer: debounce());
  }
}

EventTransformer<Event> debounce<Event>({
  Duration duration = const Duration(milliseconds: 200),
}) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}
