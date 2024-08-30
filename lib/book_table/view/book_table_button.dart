import 'package:dartx/dartx.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/book_table/view/cubit/book_table/book_table_cubit.dart';
import 'package:restaurant_app/book_table/view/cubit/tables_reservation/tables_reservation_cubit.dart';
import 'package:restaurant_app/book_table/view/cubit/tables/tables_cubit.dart';
import 'dart:developer' as developer;

import 'package:restaurant_app/shared/app_enum.dart';

class BookTableButton extends StatelessWidget {
  final String reservedSlotDay;
  final String reservedSlotHour;
  final TableReservationEntity tableReservation;
  final TableEntity table;
  const BookTableButton({
    super.key,
    required this.table,
    required this.tableReservation,
    required this.reservedSlotDay,
    required this.reservedSlotHour,
  });

  @override
  Widget build(BuildContext context) {
    String currentFirebaseUserId = FirebaseAuth.instance.currentUser!.uid;
    return BlocProvider(
      create: (context) => BookTableCubit(
        reservedSlotDay: reservedSlotDay,
        reservedSlotHour: reservedSlotHour,
        tableId: table.id,
      ),
      child: BlocBuilder<BookTableCubit, BookTableState>(
        builder: (context, state) {
          return CupertinoButton.filled(
            onPressed:
                tableReservation.canModifyReservation(currentFirebaseUserId)
                    ? () {
                        if (tableReservation.reservedBy.isNullOrEmpty) {
                          context.read<BookTableCubit>().bookTheTable(
                                tableId: table.id,
                                userId: currentFirebaseUserId,
                              );
                        } else {
                          context.read<BookTableCubit>().unbookTheTable(
                                tableId: table.id,
                                userId: currentFirebaseUserId,
                              );
                        }
                      }
                    : null,
            child: Column(
              children: [
                Text(
                  "Table with ${table.numberChair} chair${(table.numberChair > 1) ? "s" : ""}",
                ),
                const SizedBox(height: 10),
                Builder(builder: (context) {
                  String text = "";
                  switch (state.blocState) {
                    case BlocState.loading:
                      return CupertinoActivityIndicator(
                        color: CupertinoTheme.of(context).barBackgroundColor,
                      );
                    case BlocState.init:
                    case BlocState.success:
                      if (tableReservation.reservedBy == null) {
                        text = "Reserve this table";
                      } else if (tableReservation.reservedBy ==
                          currentFirebaseUserId) {
                        text = "You reserved this table\nCancel";
                      } else {
                        text = "Someone else reserved this table";
                      }
                    case BlocState.error:
                      return const Text("An error occured");
                  }

                  return Text(
                    text,
                    textAlign: TextAlign.center,
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
