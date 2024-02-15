import 'package:flutter/material.dart';
import 'package:homey_pet/utils/routes.dart';
import 'package:homey_pet/views/screens/detail_page.dart';
import 'package:homey_pet/views/screens/favorite_page.dart';
import 'package:homey_pet/views/screens/home_page.dart';

void main() {
  runApp(
    const HomeyPet(),
  );
}

class HomeyPet extends StatelessWidget {
  const HomeyPet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.homePage: (context) => const HomePage(),
        Routes.detailPage: (context) => const DetailPage(),
        Routes.favoritePage: (context) => const FavoritePage(),
      },
    );
  }
}
