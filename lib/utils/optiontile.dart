import 'package:flutter/material.dart';

Widget OptionTile(
    {required bool value, required onChanged, required String name}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        name,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      Switch(
        value: value,
        onChanged: onChanged,
      ),
    ],
  );
}
