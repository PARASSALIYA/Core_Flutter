import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text('Red & White'),
          foregroundColor: Colors.white,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "          G",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "R",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "   FLUTT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "E",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "R\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "        AN",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "D",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ROID\n",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "DESIGN ",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "& ",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "DEVELOP\n",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "         W",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "EB\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "      FAS",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "H",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "IOS\n",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: " ANIMAT",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "I",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "ON\n",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "           I",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "T",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "A-CS+\n",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "      GAM",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 24,
                    letterSpacing: 4,
                  ),
                ),
                TextSpan(
                  text: "E\n",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 34,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
