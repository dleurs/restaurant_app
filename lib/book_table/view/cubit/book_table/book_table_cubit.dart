import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/shared/app_constants.dart';
import 'package:restaurant_app/shared/app_enum.dart';
import 'dart:developer' as developer;

part 'book_table_state.dart';
part 'book_table_cubit.freezed.dart';

class BookTableCubit extends Cubit<BookTableState> {
  BookTableCubit(
      {required String reservedSlotDay,
      required String reservedSlotHour,
      required String tableId})
      : super(BookTableState(
          reservedSlotDay: reservedSlotDay,
          reservedSlotHour: reservedSlotHour,
          tableId: tableId,
        ));

  firebaseDocRef(BookTableState state) => FirebaseFirestore.instance
      .collection(reservedSlotDayDbName)
      .doc(state.reservedSlotDay)
      .collection(reservedSlotHourDbName)
      .doc(state.reservedSlotHour)
      .collection(tableReservationDbName)
      .doc(state.tableId);

  Future<void> bookTheTable(
      {required String tableId, required String userId}) async {
    emit(state.copyWith(blocState: BlocState.loading));
    try {
      await firebaseDocRef(state).set(
        TableReservationEntity(tableId: tableId, reservedBy: userId).toJson(),
      );
      emit(state.copyWith(blocState: BlocState.success));
    } catch (e) {
      developer.log("Issue getReservations() : $e");
      emit(state.copyWith(blocState: BlocState.error));
    }
  }

  Future<void> unbookTheTable(
      {required String tableId, required String userId}) async {
    emit(state.copyWith(blocState: BlocState.loading));
    try {
      await firebaseDocRef(state).set(
        TableReservationEntity(tableId: tableId, reservedBy: null).toJson(),
      );
      emit(state.copyWith(blocState: BlocState.success));
    } catch (e) {
      developer.log("Issue getReservations() : $e");
      emit(state.copyWith(blocState: BlocState.error));
    }
  }
}
