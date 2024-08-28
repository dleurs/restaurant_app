import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/food/domain/food_entity.dart';
import 'package:restaurant_app/food/view/bloc/search_bloc.dart';
import 'package:restaurant_app/food/view/food_details_page.dart';

class FoodSearchedListWidget extends StatefulWidget {
  const FoodSearchedListWidget({super.key});

  @override
  State<FoodSearchedListWidget> createState() => _FoodSearchedListWidgetState();
}

class _FoodSearchedListWidgetState extends State<FoodSearchedListWidget> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: '');
    _searchController.addListener(() {
      context
          .read<SearchBloc>()
          .add(SearchEvent(searchText: _searchController.text));
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
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return CupertinoListSection(
                  header: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 3.0),
                    //TODO dleurs(#3): UI can be improved by displaying only search when scrolling up from top
                    child: CupertinoTextField(
                      textInputAction: TextInputAction.search,
                      controller: _searchController,
                      placeholder: "Search",
                      prefix: const Padding(
                        padding:
                            EdgeInsets.only(top: 4.0, bottom: 4.0, left: 8.0),
                        child: Icon(
                          CupertinoIcons.search,
                          size: 18.0,
                          color: CupertinoColors.placeholderText,
                        ),
                      ),
                    ),
                  ),
                  topMargin: 0.0,
                  children: (state.filteredFood.isNotEmpty)
                      ? state.filteredFood.map((FoodEntity food) {
                          return CupertinoListTile(
                            title: Text(food.name),
                            onTap: () {
                              Navigator.of(context).push(
                                CupertinoPageRoute(
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
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
