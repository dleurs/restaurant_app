part of 'tables_cubit.dart';

@freezed
class TablesState with _$TablesState {
  const factory TablesState({
    @Default(BlocState.init) BlocState blocState,
    @Default([]) List<TableEntity> allTables,
  }) = _TablesState;
}
