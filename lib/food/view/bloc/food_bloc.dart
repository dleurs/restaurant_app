import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/food/domain/food_entity.dart';
import 'dart:developer' as developer;

import 'package:restaurant_app/shared/app_enum.dart';

part 'food_event.dart';
part 'food_state.dart';
part 'food_bloc.freezed.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(const FoodState()) {
    on<_FoodLoadEvent>((event, emit) async {
      try {
        emit(state.copyWith(blocState: BlocState.loading));
        //TODO dleurs(#3): Better to use Usecase, Repo and API. For simplicity.
        final snapshot =
            await FirebaseFirestore.instance.collection('food').get();
        final List<Map<String, dynamic>> foodListData =
            snapshot.docs.map((DocumentSnapshot document) {
          return document.data()! as Map<String, dynamic>;
        }).toList();
        final List<FoodEntity> foodList = foodsDataToEntity(foodListData);
        emit(state.copyWith(
          blocState: BlocState.success,
          allFood: foodList,
          filteredFood: foodList,
        ));
      } catch (e) {
        developer.log("Issue featching food : $e");
        emit(state.copyWith(
          blocState: BlocState.error,
        ));
      }
    });
    //TODO dleurs(#3): Offline filtering. Could be online (with debounce), required if pagination.
    on<_FoodSearchEvent>((event, emit) async {
      emit(state.copyWith(
        filteredFood: List.of(state.allFood)
            .where((foodEntity) => foodEntity.name
                .toLowerCase()
                .contains(event.searchText.toLowerCase()))
            .toList(),
      ));
    });
  }
}

/* 
stream_transform: ^2.1.0 #To use debounce

EventTransformer<Event> debounce<Event>({
  Duration duration = const Duration(milliseconds: 200),
}) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
} 
*/
