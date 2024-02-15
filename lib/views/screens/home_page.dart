import 'package:flutter/material.dart';
import 'package:homey_pet/utils/details.dart';
import 'package:homey_pet/views/components/home_card.dart';
import 'package:homey_pet/views/screens/favorite_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
        leading: const Icon(Icons.menu),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FavoritePage(),
                ),
              );
            },
            child: const Icon(
              Icons.favorite,
            ),
          ),
          const SizedBox(
            width: 15,
            height: 10,
          ),
        ],
      ),
      // backgroundColor: Color(0xffED9277),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              alldetails.length ~/ 2,
              (index) => petcard(context: context, index: index),
            ),
          ),
        ),
      ),
    );
  }
}
