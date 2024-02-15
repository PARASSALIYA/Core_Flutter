import 'package:flutter/material.dart';

Widget favoritecard(
    {required BuildContext context, required size, required List favorite}) {
  return Stack(
    children: [
      Column(
        children: [
          ...favorite.map(
            (e) => Container(
              height: size.height * 0.2,
              width: size.width * 0.89,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: size.height * 0.2,
                    width: size.width * 0.45,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : ${e['name']}",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Weight : ${e['weight']}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "FavoriteFood : ${e['favoriteFood'] ?? "NO"} ",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          ...favorite.map(
            (e) => Container(
              height: size.height * 0.2,
              width: size.width * 0.44,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(e['photo'][1]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    ],
  );
}
