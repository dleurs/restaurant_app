import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/view/cubit/tables/tables_cubit.dart';

class BookTableButton extends StatelessWidget {
  final String tableId;
  const BookTableButton({super.key, required this.tableId});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: () {},
      child: BlocSelector<TablesCubit, TablesState, TableEntity?>(
        selector: (state) {
          return state.allTables
              .firstWhereOrNull((table) => table.id == tableId);
        },
        builder: (context, table) {
          if (table == null) {
            const SizedBox.shrink();
          }
          return Column(
            children: [
              Text(table!.name),
              Text("Number of chairs : ${table.numberChair}"),
            ],
          );
        },
      ),
    );
  }
}
