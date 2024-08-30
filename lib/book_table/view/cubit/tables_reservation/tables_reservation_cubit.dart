import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/shared/app_constants.dart';
import 'package:restaurant_app/shared/app_enum.dart';
import 'dart:developer' as developer;

part 'tables_reservation_state.dart';
part 'tables_reservation_cubit.freezed.dart';

class TablesReservationCubit extends Cubit<TablesReservationState> {
  TablesReservationCubit({
    required String reservedSlotDay,
    required String reservedSlotHour,
  }) : super(TablesReservationState(
          reservedSlotDay: reservedSlotDay,
          reservedSlotHour: reservedSlotHour,
        ));

  Stream<List<TableReservationEntity>> getStreamTablesReservation(
      {required String reservedSlotDay, required String reservedSlotHour}) {
    return FirebaseFirestore.instance
        .collection(reservedSlotDayDbName)
        .doc(reservedSlotDay)
        .collection(reservedSlotHourDbName)
        .doc(reservedSlotHour)
        .collection(tableReservationDbName)
        .snapshots()
        .map((QuerySnapshot<Map<String, dynamic>> snapshot) {
      return snapshot.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        Map<String, dynamic> data = doc.data();
        data['tableId'] = doc.id;
        return TableReservationEntity.fromJson(doc.data());
      }).toList();
    });
  }

  void listenToTablesReservation() {
    emit(state.copyWith(blocState: BlocState.loading));

    try {
      getStreamTablesReservation(
              reservedSlotDay: state.reservedSlotDay,
              reservedSlotHour: state.reservedSlotHour)
          .listen(
              (List<TableReservationEntity> tablesReservation) => emit(
                    state.copyWith(
                      blocState: BlocState.success,
                      tablesReservation: tablesReservation,
                    ),
                  ),
              onError: (_) => emit(state.copyWith(
                    blocState: BlocState.error,
                  )));
    } catch (e) {
      developer.log("Issue listenToStream() : $e");
      emit(state.copyWith(
        blocState: BlocState.error,
      ));
    }
  }
}
