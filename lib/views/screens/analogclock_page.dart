import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:clock_app/utils/optiontile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime d = DateTime.now();
  void StartClock() {
    Future.delayed(const Duration(seconds: 1), () {
      d = DateTime.now();
      setState(() {});
      StartClock();
    });
  }

  @override
  void initState() {
    StartClock();
    super.initState();
  }

  bool _analogClock = false;
  bool _strapClock = false;
  bool _digitalClock = false;

  List day = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];
  List month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "July",
    "Aug",
    "Sep",
    "Oct",
    "Nev",
    "Des",
  ];
  bool _images = false;
  int si = 0;
  final List<String> image = [
    "https://i.pinimg.com/564x/2e/fc/4b/2efc4bfd011eae49f9f94cadf28236d0.jpg",
    "https://i.pinimg.com/564x/c5/aa/54/c5aa547826e6370f5ec1667ff63cdf69.jpg",
    "https://i.pinimg.com/564x/72/90/39/729039bbc263702451407cfa4cb43e6a.jpg",
    "https://i.pinimg.com/564x/c4/8a/95/c48a953e0f5c7d198b9d17115c5bb1db.jpg",
    "https://i.pinimg.com/564x/b0/7e/d7/b07ed7b559def7ae0e6eee55f0b2ca72.jpg",
    "https://i.pinimg.com/564x/b0/7e/d7/b07ed7b559def7ae0e6eee55f0b2ca72.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://static-00.iconduck.com/assets.00/profile-circle-icon-2048x2048-cqe5466q.png"),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              accountName: Text("Clock App"),
              accountEmail: Text("Clock34@gamil.com"),
            ),
            OptionTile(
              value: _analogClock,
              name: " Analog Clock ",
              onChanged: (value) =>
                  setState(() => _analogClock = !_analogClock),
            ),
            OptionTile(
              value: _strapClock,
              name: " Strap Clock ",
              onChanged: (value) => setState(() => _strapClock = !_strapClock),
            ),
            OptionTile(
              value: _digitalClock,
              name: "Digital Clock ",
              onChanged: (value) =>
                  setState(() => _digitalClock = !_digitalClock),
            ),
            OptionTile(
              value: _images,
              name: " BackGround Images ",
              onChanged: (value) => setState(() => _images = !_images),
            ),
            const SizedBox(
              height: 20,
            ),
            Visibility(
              visible: _images,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GestureDetector(
                  onTap: () {
                    si = image.indexOf(e as String);
                    setState(() {});
                  },
                  child: Row(
                    children: image
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              si = image.indexOf(e);
                              setState(() {});
                            },
                            child: Container(
                              height: 90,
                              width: 90,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                border: image.indexOf(e) == si
                                    ? Border.all(color: Colors.grey)
                                    : null,
                                image: DecorationImage(
                                  image: NetworkImage(e),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("My Clock"),
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      // backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Visibility(
            visible: _analogClock == false &&
                _digitalClock == false &&
                _strapClock == false,
            child: const Text(
              "SELECT A CLOCK FROM MENU!!",
            ),
          ),
          //image
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: _images
                  ? DecorationImage(
                      image: NetworkImage(
                        image[si],
                      ),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
          //Analog Clock
          Visibility(
            visible: _analogClock,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Container(
                      height: size.height * 0.5,
                      width: size.width,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ...List.generate(
                            60,
                            (index) => Transform.rotate(
                              angle: index * pi * 2 / 60,
                              child: Divider(
                                  endIndent: index % 5 == 0
                                      ? size.width * 0.83
                                      : size.width * 0.85,
                                  thickness: index % 5 == 0 ? 2 : 1,
                                  color: index % 5 == 0
                                      ? Colors.black
                                      : Color(0xffad9c00)),
                            ),
                          ),
                          Transform.rotate(
                            angle: d.hour * pi * 2 / 12,
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Divider(
                                indent: 100,
                                endIndent: size.width * 0.43,
                                thickness: 2,
                                color: (_images == true)
                                    ? Colors.white
                                    : const Color(0xffad9c00),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: d.minute * pi * 2 / 60,
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Divider(
                                indent: 60,
                                endIndent: size.width * 0.43,
                                thickness: 2,
                                color: (_images == true)
                                    ? Colors.white
                                    : const Color(0xffad9c00),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: d.second * pi * 2 / 60,
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Divider(
                                indent: 40,
                                endIndent: size.width * 0.43,
                                thickness: 2,
                                color: (_images == true)
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: size.height * 0.01,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //Strap Clock
          Visibility(
            visible: _strapClock,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 7,
                    child: CircularProgressIndicator(
                      strokeWidth: 1,
                      value: d.hour % 12 / 12,
                      color: (_images == true) ? Colors.white : Colors.blueGrey,
                    ),
                  ),
                  Transform.scale(
                    scale: 6,
                    child: CircularProgressIndicator(
                      strokeWidth: 1,
                      value: d.minute / 60,
                      color: (_images == true) ? Colors.white : Colors.blueGrey,
                    ),
                  ),
                  Transform.scale(
                    scale: 5,
                    child: CircularProgressIndicator(
                      strokeWidth: 1,
                      value: d.second / 60,
                      color: (_images == true) ? Colors.white : Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Diggital Clock
          Visibility(
            visible: _digitalClock,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${(d.hour % 12).toString().padLeft(2, "0")} : ${d.minute.toString().padLeft(2, "0")} : ${d.second.toString().padLeft(2, "0")} ",
                              style: TextStyle(
                                color: (_images == true)
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              d.hour < 12 ? "AM" : "PM",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox.square(
                          dimension: 12,
                        ),
                        Text(
                          "${d.day} ${month[d.month - 1]} ${d.year} ",
                          style: TextStyle(
                            color:
                                (_images == true) ? Colors.white : Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
