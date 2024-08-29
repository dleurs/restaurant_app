part of 'book_table_cubit.dart';

@freezed
class BookTableState with _$BookTableState {
  const factory BookTableState({
    @Default(BlocState.init) BlocState blocState,
    required String reservedSlotDay,
    required String reservedSlotHour,
    required List<String> tablesId,
    @Default([]) List<TableReservationEntity> tableReservation,
  }) = _BookTableState;
}
