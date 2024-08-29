import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String title,
    {Duration duration = const Duration(milliseconds: 4000)}) {
  if (context.mounted) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: duration,
        content: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 16.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white),
          ),
        ))));
  }
}
