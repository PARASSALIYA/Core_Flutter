import 'package:flutter/material.dart';
import 'package:homey_pet/utils/details.dart';
import 'package:homey_pet/views/components/detail_card.dart';
import 'package:homey_pet/views/components/button_card.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Detail Page "),
        centerTitle: true,
      ),
      body: detailcard(context: context, data: data),
      floatingActionButton:
          Button(data: data, favorite: favorite, context: context),
    );
  }
}
