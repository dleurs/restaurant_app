import 'package:flutter/cupertino.dart';

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
        padding: const EdgeInsetsDirectional.only(),
        leading: const CupertinoNavigationBarBackButton(
          previousPageTitle: "Menu",
        ),
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
