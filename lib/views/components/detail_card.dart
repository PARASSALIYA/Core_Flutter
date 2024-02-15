import 'package:flutter/material.dart';

Widget detailcard({required BuildContext context, required data}) {
  Size size = MediaQuery.sizeOf(context);
  return Column(
    children: [
      Container(
        height: size.height * 0.55,
        width: size.width,
        // margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
          image: DecorationImage(
            image: NetworkImage(
              data['photo'][1],
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width,
            // margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    " All Details :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    " Name : ${data['name']},",
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    " Weight : ${data['weight'].toString()},",
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    " SleepAmount : ${data['sleepAmount'] ?? "1"},",
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    " FavoriteFood : ${data['favoriteFood'] ?? "NO"},",
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    " Floppy : ${data['floppy'] ?? "0"},",
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  Text(
                    " Chill : ${data['chill'] ?? "No"},",
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
