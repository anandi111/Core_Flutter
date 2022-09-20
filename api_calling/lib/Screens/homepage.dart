import 'package:api_calling/Helpers/posthelper.dart';
import 'package:api_calling/Screens/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wether App"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PostScreen(),
                      ));
                },
                child: Text("Posts")),
            ElevatedButton(onPressed: () {}, child: Text("Comments")),
            ElevatedButton(onPressed: () {}, child: Text("Albums")),
            ElevatedButton(onPressed: () {}, child: Text("Photos")),
            ElevatedButton(onPressed: () {}, child: Text("Todos")),
            ElevatedButton(onPressed: () {}, child: Text("Users")),
          ],
        ),
      ),
    );
  }
}
