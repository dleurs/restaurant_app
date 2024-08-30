import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/book_table/view/cubit/book_table/book_table_cubit.dart';
import 'package:restaurant_app/book_table/view/cubit/tables/tables_cubit.dart';
import 'dart:developer' as developer;

class BookTableButton extends StatelessWidget {
  final TableEntity table;
  const BookTableButton({super.key, required this.table});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookTableCubit, BookTableState, TableReservationEntity>(
      selector: (state) {
        final TableReservationEntity? tableAlreadyReserved =
            state.tableReservation.firstWhereOrNull(
                (tableReservation) => tableReservation.tableId == table.id);
        if (tableAlreadyReserved == null) {
          return TableReservationEntity(tableId: table.id);
        } else {
          return tableAlreadyReserved;
        }
      },
      builder: (context, tableReservation) {
        return CupertinoButton.filled(
          onPressed: tableReservation
                  .canModifyReservation(FirebaseAuth.instance.currentUser?.uid)
              ? () {
                
              }
              : null,
          child: Column(
            children: [
              Text(
                  "Table with ${table.numberChair} chair${(table.numberChair > 1) ? "s" : ""}"),
            ],
          ),
        );
      },
    );
  }
}
