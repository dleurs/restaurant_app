import 'package:flutter/cupertino.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/book_table/view/book_table_page.dart';
import 'package:restaurant_app/book_table/view/cubit/tables/tables_cubit.dart';
import 'package:restaurant_app/food/view/bloc/food_bloc.dart';
import 'package:restaurant_app/food/view/food_search_page.dart';
import 'package:restaurant_app/user/view/cubit/user_cubit.dart';
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
    return BlocProvider(
      create: (context) => UserCubit(),
      child: const CupertinoApp(
        title: 'Restaurant App',
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: AppScaffold(title: 'Restaurant app'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key, required this.title});

  final String title;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  void initState() {
    context.read<UserCubit>().listenToFirebaseAndFirestore();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_sharp,
              size: 26,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.book,
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
              return BlocProvider<FoodBloc>(
                create: (context) => FoodBloc()..add(const FoodEvent.load()),
                child: const FoodSearchPage(),
              );
            },
          );
        }
        return CupertinoTabView(
          builder: (BuildContext context) {
            return BlocProvider<TablesCubit>(
              create: (context) => TablesCubit(),
              //TODO dleurs(#4): TablesCubit()..getAllTables() not triggering. Can be solved with proper navigation system I think.
              child: const BookTablePage(),
            );
          },
        );
      },
    );
  }
}
