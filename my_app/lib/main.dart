import 'package:flutter/material.dart';
import 'package:my_app/views/screens/home_page.dart';

void main() {
  runApp(
    const my_app(),
  );
}

class my_app extends StatelessWidget {
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
