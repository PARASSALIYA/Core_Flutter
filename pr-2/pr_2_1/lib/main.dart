import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('🛍 List of Fruits'),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "🍎  Apple\n",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🍇  Grapes\n",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🍒  Cherry\n",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🍓  Strawberry\n",
                  style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🥭  Mango\n",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🍍  Pineapple\n",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🍋  Lemon\n",
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🍉  Watermelon\n",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "🥥  Coconut\n",
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
