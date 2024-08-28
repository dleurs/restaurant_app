import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/food/food_entity.dart';

class FoodSearchPage extends StatelessWidget {
  const FoodSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Food of the menu'),
      ),
      child: SafeArea(
        //TODO dleurs(#3): Best to create FoodCubit, GetFoodUsecase, FoodRepository and FoodApi. Reduced for simplicity.
        //dleurs(#3): No pagination, but could be interesting
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
            final List<Map<String, dynamic>> foodListData =
                snapshot.data!.docs.map((DocumentSnapshot document) {
              return document.data()! as Map<String, dynamic>;
            }).toList();
            final List<FoodEntity> foodList = listDataToEntity(foodListData);
            return FoodSearchedListWidget(foodList: foodList);
          },
        ),
      ),
    );
  }
}

class FoodSearchedListWidget extends StatefulWidget {
  final List<FoodEntity> foodList;
  const FoodSearchedListWidget({super.key, required this.foodList});

  @override
  State<FoodSearchedListWidget> createState() => _FoodSearchedListWidgetState();
}

class _FoodSearchedListWidgetState extends State<FoodSearchedListWidget> {
  late TextEditingController _searchController;
  late List<FoodEntity> filteredFoodList;

  @override
  void initState() {
    super.initState();
    filteredFoodList = List.of(widget.foodList);
    _searchController = TextEditingController(text: '');

    _searchController.addListener(() {
      setState(() {
        filteredFoodList = List.of(widget.foodList)
            .where((foodEntity) => foodEntity.name
                .toLowerCase()
                .contains(_searchController.text.toLowerCase()))
            .toList();
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
              backgroundColor:
                  CupertinoTheme.of(context).scaffoldBackgroundColor,
              children: (filteredFoodList.isNotEmpty)
                  ? filteredFoodList.map((FoodEntity food) {
                      return CupertinoListTile(
                        title: Text(food.name),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => FoodDetailsPage(
                                name: food.name,
                                description: food.description,
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
