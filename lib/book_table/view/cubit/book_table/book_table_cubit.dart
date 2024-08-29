import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/shared/app_enum.dart';
import 'dart:developer' as developer;

part 'book_table_state.dart';
part 'book_table_cubit.freezed.dart';

const String reservedSlotDayDbName = "reserved_slot_day";
const String reservedSlotHourDbName = "reserved_slot_hour";
const String tableReservationDbName = "table_reservation";

class BookTableCubit extends Cubit<BookTableState> {
  BookTableCubit({
    required String reservedSlotDay,
    required String reservedSlotHour,
  }) : super(BookTableState(
            reservedSlotDay: reservedSlotDay,
            reservedSlotHour: reservedSlotHour));

  Future<void> getReservations() async {
    emit(state.copyWith(blocState: BlocState.loading));
    try {
      //TODO dleurs(#4): Better to use Usecase, Repo and API. For simplicity.
      final snapshot = await FirebaseFirestore.instance
          .collection(reservedSlotDayDbName)
          .doc(state.reservedSlotDay)
          .collection(reservedSlotHourDbName)
          .doc(state.reservedSlotHour)
          .collection(tableReservationDbName)
          .get();
      final List<Map<String, dynamic>> tableReservationListData =
          snapshot.docs.map((DocumentSnapshot document) {
        return document.data()! as Map<String, dynamic>;
      }).toList();
      final List<TableReservationEntity> tableReservationList =
          tableReservationsDataToEntity(tableReservationListData);
      emit(state.copyWith(
        blocState: BlocState.success,
        tableReservation: tableReservationList,
      ));
    } catch (e) {
      developer.log("Issue getReservations() : $e");
      emit(state.copyWith(blocState: BlocState.error));
    }
  }
}
