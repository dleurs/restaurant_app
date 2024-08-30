import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/book_table/view/book_table_button.dart';
import 'package:restaurant_app/book_table/view/cubit/tables_reservation/tables_reservation_cubit.dart';
import 'package:restaurant_app/book_table/view/cubit/tables/tables_cubit.dart';
import 'package:restaurant_app/shared/app_dimensions.dart';
import 'package:restaurant_app/shared/app_enum.dart';
import 'package:collection/collection.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({
    super.key,
  });

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  void initState() {
    context.read<TablesReservationCubit>().listenToTablesReservation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.only(),
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: "When ?",
        ),
        middle: Text("Book a table"),
      ),
      child: SafeArea(
        child: BlocBuilder<TablesReservationCubit, TablesReservationState>(
          builder: (context, state) {
            switch (state.blocState) {
              case BlocState.init:
              case BlocState.loading:
                return const Center(child: CupertinoActivityIndicator());
              case BlocState.error:
                return const Center(
                  child: Text(
                    "An error occured.\nDo you have internet ?",
                    textAlign: TextAlign.center,
                  ),
                );
              case BlocState.success:
                return SingleChildScrollView(
                  child:
                      BlocSelector<TablesCubit, TablesState, List<TableEntity>>(
                    selector: (state) {
                      return state.allTables;
                    },
                    builder: (context, tables) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: double.infinity),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: appHorizontalPadding,
                              left: appHorizontalPadding,
                              top: 40,
                              bottom: appHorizontalPadding,
                            ),
                            child: Builder(builder: (context) {
                              final dateTime = DateFormat("yyyy-MM-dd-HH").parse(
                                  "${state.reservedSlotDay}-${state.reservedSlotHour}");
                              final dateString =
                                  DateFormat("EEEE dd LLLL yyyy 'at' HH'h'")
                                      .format(dateTime);
                              return Text(
                                "Available tables for\n$dateString :",
                                textAlign: TextAlign.center,
                              );
                            }),
                          ),
                          ...tables.map((table) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                ),
                                child: BookTableButton(
                                  table: table,
                                  reservedSlotDay: state.reservedSlotDay,
                                  reservedSlotHour: state.reservedSlotHour,
                                  tableReservation: state.tablesReservation
                                          .firstWhereOrNull(
                                              (tableReservation) =>
                                                  tableReservation.tableId ==
                                                  table.id) ??
                                      TableReservationEntity(tableId: table.id),
                                ),
                              )),
                        ],
                      );
                    },
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
