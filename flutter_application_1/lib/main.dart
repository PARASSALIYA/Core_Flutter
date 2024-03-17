import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int hour = 0;
  int minute = 0;
  int second = 0;

  timer() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          if (second < 59) {
            second = 0;
            minute++;
          }
          if (minute < 59) {
            minute = 0;
            hour++;
          }
          if (hour < 12) {
            hour = 0;
          }
        });
        timer();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Clock App"),
          leading: const Icon(Icons.more_vert_outlined),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${hour} : ${minute} : ${second}",
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    log("Play Clicked");
                    timer();
                  },
                  child: const Text("Play"),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: const Text("Pause"),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: const Text("Reset"),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
