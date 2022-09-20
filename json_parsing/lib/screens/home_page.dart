import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late dynamic jsonData;
  dynamic decodedData;

  loadJson() async {
    jsonData = await rootBundle.loadString("assest/json");
    decodedData = JsonDecoder(jsonData);
    print("json Data hello 111= ${jsonData}");
  }

  void initState() {
    super.initState();
    loadJson();
    print("json Data hello 2222 = ${jsonData}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
    );
  }
}
