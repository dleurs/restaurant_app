part of 'tables_reservation_cubit.dart';

@freezed
class TablesReservationState with _$TablesReservationState {
  const factory TablesReservationState({
    @Default(BlocState.init) BlocState blocState,
    required String reservedSlotDay,
    required String reservedSlotHour,
    @Default([]) List<TableReservationEntity> tablesReservation,
  }) = _TablesReservationState;
}
