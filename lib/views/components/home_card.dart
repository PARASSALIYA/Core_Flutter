import 'package:flutter/material.dart';
import 'package:homey_pet/utils/details.dart';
import 'package:homey_pet/utils/routes.dart';

Widget petcard({required BuildContext context, required int index}) {
  Size size = MediaQuery.sizeOf(context);
  return Row(
    children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(Routes.detailPage, arguments: alldetails[index * 2]);
          },
          child: Container(
            margin: const EdgeInsets.all(5),
            height: size.height * 0.3,
            width: size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(
                  alldetails[index * 2]['photo'][1],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(Routes.detailPage,
                arguments: alldetails[index * 2 + 1]);
          },
          child: Container(
            margin: const EdgeInsets.all(5),
            height: size.height * 0.3,
            width: size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(
                  alldetails[index * 2 + 1]['photo'][1],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
