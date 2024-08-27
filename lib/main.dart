import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

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
            icon: Icon(CupertinoIcons.book),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
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
            return Center(
              child: Text('Content of tab $index'),
            );
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
    final Stream<QuerySnapshot> foodStream =
        FirebaseFirestore.instance.collection('food').snapshots();

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Food of the menu'),
      ),
      child: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
          stream: foodStream,
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

            return FoodFilteredListPage(
              foodList: foodList,
            );
          },
        ),
      ),
    );
  }
}

class FoodFilteredListPage extends StatefulWidget {
  final List<Map<String, dynamic>> foodList;
  const FoodFilteredListPage({super.key, required this.foodList});

  @override
  State<FoodFilteredListPage> createState() => _FoodFilteredListPageState();
}

class _FoodFilteredListPageState extends State<FoodFilteredListPage> {
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
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: CupertinoTextField(
            textInputAction: TextInputAction.search,
            controller: _searchController,
            placeholder: "Search here",
          ),
        ),
        (filteredFoodList.isNotEmpty)
            ? Expanded(
                child: SingleChildScrollView(
                  child: CupertinoListSection(
                    topMargin: 0.0,
                    backgroundColor: Colors.white,
                    children: filteredFoodList.map((Map<String, dynamic> data) {
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
                    }).toList(),
                  ),
                ),
              )
            : const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text("No results with this search"),
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
    );
  }
}
