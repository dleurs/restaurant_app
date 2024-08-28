import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/food/domain/food_entity.dart';
import 'package:restaurant_app/food/view/bloc/search_bloc.dart';
import 'package:restaurant_app/food/view/food_search_list_widget.dart';

class FoodSearchPage extends StatelessWidget {
  const FoodSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Food of the menu'),
      ),
      child: SafeArea(
        //TODO dleurs(#3): Best to create GetFoodUsecase, FoodRepository and FoodApi. Reduced for simplicity.
        //TODO dleurs(#3): No pagination, but could be interesting
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
            return BlocProvider<SearchBloc>(
              create: (context) => SearchBloc(foodList),
              child: const FoodSearchedListWidget(),
            );
          },
        ),
      ),
    );
  }
}

