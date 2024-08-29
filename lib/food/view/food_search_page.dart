import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/food/domain/food_entity.dart';
import 'package:restaurant_app/food/view/bloc/food_bloc.dart';
import 'package:restaurant_app/food/view/food_details_page.dart';
import 'package:restaurant_app/shared/app_dimensions.dart';
import 'package:restaurant_app/shared/app_enum.dart';

class FoodSearchPage extends StatefulWidget {
  const FoodSearchPage({super.key});

  @override
  State<FoodSearchPage> createState() => _FoodSearchPageState();
}

class _FoodSearchPageState extends State<FoodSearchPage> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: '');
    _searchController.addListener(() {
      context
          .read<FoodBloc>()
          .add(FoodEvent.search(searchText: _searchController.text));
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<FoodBloc, FoodState>(
            builder: (context, state) {
              return Column(
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
                      "Menu",
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .navLargeTitleTextStyle,
                    ),
                  ),
                  BlocBuilder<FoodBloc, FoodState>(
                    builder: (context, state) {
                      switch (state.blocState) {
                        case BlocState.init:
                        case BlocState.loading:
                          return const Center(
                              child: CupertinoActivityIndicator());
                        case BlocState.error:
                          return const Center(
                            child: Text(
                              "An error occured.\nDo you have internet ?",
                              textAlign: TextAlign.center,
                            ),
                          );
                        case BlocState.success:
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: appHorizontalPadding,
                                ),
                                child: CupertinoSearchTextField(
                                  controller: _searchController,
                                  //placeholder: "Search",
                                ),
                              ),
                              (state.filteredFood.isNotEmpty)
                                  ? CupertinoListSection.insetGrouped(
                                      children: state.filteredFood
                                          .map((FoodEntity food) {
                                        return CupertinoListTile(
                                          title: Text(food.name),
                                          trailing:
                                              const CupertinoListTileChevron(),
                                          onTap: () {
                                            Navigator.of(context).push(
                                              CupertinoPageRoute(
                                                builder: (context) =>
                                                    FoodDetailsPage(
                                                  name: food.name,
                                                  description: food.description,
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      }).toList(),
                                    )
                                  : const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 25),
                                      child: Text("No results found"),
                                    ),
                            ],
                          );
                      }
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
