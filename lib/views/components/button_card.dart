import 'package:flutter/material.dart';

Widget Button(
    {required data,
    required List<Map<String, dynamic>> favorite,
    required BuildContext context}) {
  return FloatingActionButton.extended(
    onPressed: () {
      late SnackBar snackBar;
      if (favorite.contains(data)) {
        favorite.remove(data);
        snackBar = const SnackBar(
          content: Text("removed from the Favorite Page !!"),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        );
      } else {
        favorite.add(data);
        snackBar = const SnackBar(
          content: Text("added to the Favorite Page !!"),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
        );
      }
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
    icon: const Icon(Icons.favorite_border_rounded),
    label: const Text("Add to Favorite"),
  );
}
