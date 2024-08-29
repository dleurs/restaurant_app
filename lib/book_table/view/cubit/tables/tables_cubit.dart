import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/shared/app_enum.dart';
import 'dart:developer' as developer;

part 'tables_state.dart';
part 'tables_cubit.freezed.dart';

class TablesCubit extends Cubit<TablesState> {
  TablesCubit() : super(const TablesState());

  Future<void> getAllTables() async {
    if (state.blocState == BlocState.loading) {
      return;
    }
    emit(state.copyWith(blocState: BlocState.loading));
    try {
      //TODO dleurs(#4): Better to use Usecase, Repo and API. For simplicity.
      final snapshot =
          await FirebaseFirestore.instance.collection('table').get();
      final List<Map<String, dynamic>> tableListData =
          snapshot.docs.map((DocumentSnapshot document) {
        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
        data['id'] = document.id;
        return data;
      }).toList();
      final List<TableEntity> tableList = tablesDataToEntity(tableListData);
      emit(state.copyWith(
        blocState: BlocState.success,
        allTables: tableList,
      ));
    } catch (e) {
      developer.log("Issue getAllTables() : $e");
      emit(state.copyWith(blocState: BlocState.error));
    }
  }
}
