import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: MyHomePage(title: 'Restaurant app'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
              size: 26,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bookmark,
              size: 26,
            ),
            label: 'Book a table',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return const FoodListPage();
            },
          );
        }
        return CupertinoTabView(
          builder: (BuildContext context) {
            return const BookTablePage();
          },
        );
      },
    );
  }
}

class FoodListPage extends StatelessWidget {
  const FoodListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Food of the menu'),
      ),
      child: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('food').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CupertinoActivityIndicator());
            }
            final foodList =
                snapshot.data!.docs.map((DocumentSnapshot document) {
              return document.data()! as Map<String, dynamic>;
            }).toList();

            return FoodFilteredListWidget(
              foodList: foodList,
            );
          },
        ),
      ),
    );
  }
}

class FoodFilteredListWidget extends StatefulWidget {
  final List<Map<String, dynamic>> foodList;
  const FoodFilteredListWidget({super.key, required this.foodList});

  @override
  State<FoodFilteredListWidget> createState() => _FoodFilteredListWidgetState();
}

class _FoodFilteredListWidgetState extends State<FoodFilteredListWidget> {
  late TextEditingController _searchController;
  late List<Map<String, dynamic>> filteredFoodList;

  @override
  void initState() {
    super.initState();
    filteredFoodList = List.of(widget.foodList);
    _searchController = TextEditingController(text: '');

    _searchController.addListener(() {
      setState(() {
        filteredFoodList = List.of(widget.foodList);
        if (_searchController.text.isNotEmpty) {
          filteredFoodList.removeWhere((foodItem) {
            String foodName = (foodItem['name'] as String).toLowerCase();
            return !foodName.contains(_searchController.text.toLowerCase());
          });
        }
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: CupertinoListSection(
              header: Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 3.0),
                child: CupertinoTextField(
                  textInputAction: TextInputAction.search,
                  controller: _searchController,
                  placeholder: "Search",
                  prefix: const Padding(
                    padding: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0),
                    child: Icon(
                      CupertinoIcons.search,
                      size: 18.0,
                      color: CupertinoColors.placeholderText,
                    ),
                  ),
                ),
              ),
              topMargin: 0.0,
              backgroundColor: Colors.white,
              children: (filteredFoodList.isNotEmpty)
                  ? filteredFoodList.map((Map<String, dynamic> data) {
                      return CupertinoListTile(
                        title: Text(data['name']),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FoodDetailsPage(
                                name: data['name'],
                                description: data['description'],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList()
                  : [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: Text("No results with this search"),
                      )
                    ],
            ),
          ),
        )
      ],
    );
  }
}

class FoodDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  const FoodDetailsPage({
    super.key,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(name),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                description,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Book a table'),
      ),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'When do you need to book a table ?',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
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
                // In this example, the date is formatted manually. You can
                // use the intl package to format the value based on the
                // user's locale settings.
                child: Text(
                  DateFormat("EEEE dd LLLL yyyy").format(date),
                  //DateFormat.yMMMMd().format(date),
                  style: const TextStyle(
                    fontSize: 20.0,
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
                  DateFormat("HH:mm").format(date),
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          CupertinoButton.filled(
              onPressed: () {}, child: const Text("Book a table"))
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
