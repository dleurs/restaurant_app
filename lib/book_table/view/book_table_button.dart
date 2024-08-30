import 'package:dartx/dartx.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/domain/entity/table_reservation_entity.dart';
import 'package:restaurant_app/book_table/view/cubit/book_table/book_table_cubit.dart';

import 'package:restaurant_app/shared/app_enum.dart';
import 'package:restaurant_app/shared/app_utils.dart';
import 'package:restaurant_app/user/view/cubit/user_cubit.dart';

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

  Future<bool?> _showAlertDialog(BuildContext context) async {
    final TextEditingController controller = TextEditingController();
    final userCubit = context.read<UserCubit>();
    return await showCupertinoDialog<bool?>(
      context: context,
      builder: (BuildContext context) => BlocProvider<UserCubit>(
        create: (context) => userCubit,
        child: CupertinoAlertDialog(
          title: const Text('Write your name'),
          content: CupertinoTextField(
            controller: controller,
          ),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () async {
                if (controller.text.isNotEmpty) {
                  await context.read<UserCubit>().saveUsername(
                        firebaseAuth: FirebaseAuth.instance.currentUser!.uid,
                        username: controller.text,
                      );
                  if (context.mounted) {
                    return Navigator.pop(
                        context,
                        context
                            .read<UserCubit>()
                            .state
                            .username
                            .isNotNullOrEmpty);
                  }
                }
              },
              child:
                  BlocBuilder<UserCubit, UserState>(builder: (context, state) {
                switch (state.blocState) {
                  case BlocState.init:
                  case BlocState.success:
                    return const Text('Save');
                  case BlocState.loading:
                    return const CupertinoActivityIndicator();
                  case BlocState.error:
                    return const Icon(CupertinoIcons.exclamationmark_circle);
                }
                return const SizedBox.shrink();
              }),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () async {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String firebaseId = FirebaseAuth.instance.currentUser!.uid;
    return BlocProvider(
      create: (context) => BookTableCubit(
        reservedSlotDay: reservedSlotDay,
        reservedSlotHour: reservedSlotHour,
        tableId: table.id,
      ),
      child: BlocListener<BookTableCubit, BookTableState>(
        listenWhen: (_, current) => current.blocState == BlocState.error,
        listener: (context, state) {
          showCupertinoSnackBar(
            context,
            message:
                "An error occured, do you have internet ?\nPlease try again.",
          );
        },
        child: BlocBuilder<BookTableCubit, BookTableState>(
          builder: (context, state) {
            return CupertinoButton.filled(
              disabledColor: CupertinoColors.systemGrey,
              onPressed: tableReservation.canModifyReservation(firebaseId)
                  ? () async {
                      bool usernameSet = !context
                          .read<UserCubit>()
                          .state
                          .username
                          .isNullOrEmpty;
                      if (usernameSet == false &&
                          tableReservation.reservedBy != firebaseId) {
                        usernameSet = (await _showAlertDialog(context)) == true;
                      }
                      if (!context.mounted) {
                        return;
                      }
                      if (tableReservation.reservedBy.isNullOrEmpty &&
                          usernameSet) {
                        context.read<BookTableCubit>().bookTheTable(
                              tableId: table.id,
                              userId: firebaseId,
                            );
                      } else if (!tableReservation.reservedBy.isNullOrEmpty) {
                        context.read<BookTableCubit>().unbookTheTable(
                              tableId: table.id,
                              userId: firebaseId,
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
                        return const CupertinoActivityIndicator(
                          color: CupertinoColors.white,
                        );
                      case BlocState.init:
                      case BlocState.success:
                      case BlocState.error:
                        if (tableReservation.reservedBy == null) {
                          text = "Reserve this table";
                        } else if (tableReservation.reservedBy == firebaseId) {
                          text = "Reserved";
                        } else {
                          text = "Someone else\nreserved this table";
                        }
                    }
                    return Text(
                      text,
                      textAlign: TextAlign.center,
                      style: tableReservation.reservedBy == firebaseId
                          ? CupertinoTheme.of(context)
                              .textTheme
                              .navLargeTitleTextStyle
                              .copyWith(
                                color: CupertinoColors.white,
                              )
                          : null,
                    );
                  }),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
