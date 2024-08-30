import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_app/book_table/domain/entity/table_entity.dart';
import 'package:restaurant_app/book_table/view/cubit/tables_reservation/tables_reservation_cubit.dart';
import 'package:restaurant_app/book_table/view/cubit/tables/tables_cubit.dart';
import 'package:restaurant_app/book_table/view/reservation_page.dart';
import 'package:restaurant_app/shared/app_dimensions.dart';
import 'dart:developer' as developer;

import 'package:restaurant_app/shared/app_utils.dart';

class BookTablePage extends StatefulWidget {
  const BookTablePage({super.key});

  @override
  State<BookTablePage> createState() => _BookTablePageState();
}

class _BookTablePageState extends State<BookTablePage> {
  DateTime date = DateTime(2024, DateTime.august, 27);
  DateTime time = DateTime(2024, DateTime.august, 27, 20, 00);

  @override
  void initState() {
    context.read<TablesCubit>().getAllTables();
    final now = DateTime.now();
    date = now;
    time = now;
    super.initState();
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              bottom: 20,
              left: appHorizontalPadding,
              right: appHorizontalPadding,
            ),
            child: Text(
              "When to book ?",
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
          ),
          const Expanded(child: SizedBox.shrink()),
          DatePickerItem(
            children: <Widget>[
              const Text('Date'),
              CupertinoButton(
                // Display a CupertinoDatePicker in date picker mode.
                onPressed: () => _showDialog(
                  CupertinoDatePicker(
                    initialDateTime: date,
                    minimumDate: DateTime(2024, DateTime.august, 27),
                    mode: CupertinoDatePickerMode.date,
                    use24hFormat: true,
                    // This shows day of week alongside day of month
                    showDayOfWeek: true,
                    // This is called when the user changes the date.
                    onDateTimeChanged: (DateTime newDate) {
                      setState(() => date = newDate);
                    },
                  ),
                ),
                child: Text(
                  DateFormat("EEEE dd LLLL yyyy").format(date),
                  //DateFormat.yMMMMd().format(date),
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          DatePickerItem(
            children: <Widget>[
              const Text('Time'),
              CupertinoButton(
                // Display a CupertinoDatePicker in time picker mode.
                onPressed: () => _showDialog(
                  CupertinoDatePicker(
                    initialDateTime: time,
                    mode: CupertinoDatePickerMode.time,
                    use24hFormat: true,
                    // This is called when the user changes the time.
                    onDateTimeChanged: (DateTime newTime) {
                      setState(() => time = newTime);
                    },
                  ),
                ),
                // In this example, the time value is formatted manually.
                // You can use the intl package to format the value based on
                // the user's locale settings.
                child: Text(
                  DateFormat("HH:mm").format(time),
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Center(
            child: CupertinoButton.filled(
                onPressed: () {
                  final List<TableEntity> allTables =
                      context.read<TablesCubit>().state.allTables;
                  developer.log("allTables : ${allTables.toString()}");
                  if (allTables.isEmpty ||
                      FirebaseAuth.instance.currentUser?.uid == null) {
                    showCupertinoSnackBar(
                      context,
                      message:
                          "An error occured, do you have internet ?\nPlease try again.",
                    );
                    context.read<TablesCubit>().getAllTables();
                  } else {
                    final String reservedSlotDay =
                        DateFormat("yyyy-MM-dd").format(date);
                    developer.log(reservedSlotDay);
                    final String reservedSlotHour =
                        DateFormat("HH").format(time);
                    developer.log(reservedSlotHour);
                    final tablesCubit = context.read<TablesCubit>();
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => MultiBlocProvider(
                          providers: [
                            BlocProvider(
                                create: (context) => TablesReservationCubit(
                                      reservedSlotDay: reservedSlotDay,
                                      reservedSlotHour: reservedSlotHour,
                                    )),
                            BlocProvider(
                              //TODO dleurs(#4): This way of passing cubit can be removed with proper navigation system
                              create: (context) => tablesCubit,
                            ),
                          ],
                          child: const ReservationPage(),
                        ),
                      ),
                    );
                  }
                },
                child: const Text("Search a table")),
          ),
          const Expanded(flex: 2, child: SizedBox.shrink()),
        ],
      )),
    );
  }
}

class DatePickerItem extends StatelessWidget {
  const DatePickerItem({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
