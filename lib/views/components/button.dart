import 'package:flutter/cupertino.dart';

Widget button({
  required Widget button,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        button,
      ],
    ),
  );
}
