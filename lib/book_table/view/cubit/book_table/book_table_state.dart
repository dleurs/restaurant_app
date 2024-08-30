part of 'book_table_cubit.dart';

@freezed
abstract class BookTableState with _$BookTableState {
  const factory BookTableState({
    @Default(BlocState.init) BlocState blocState,
    required String reservedSlotDay,
    required String reservedSlotHour,
    required String tableId,
  }) = _BookTableState;
}
