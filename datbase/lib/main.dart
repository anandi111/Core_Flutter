import 'dart:convert';
import 'package:datbase/helpers/DbHelper.dart';
import 'package:datbase/modals/todosModal.dart';
import 'package:datbase/screens/api_DB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  late List<Todos> todosListData;

  getDBInit() async {
    if (count == 0) {
      String rawData = await rootBundle.loadString("res.json");

      List<dynamic> Data = jsonDecode(rawData);
      // print(Data);

      DBHelper.dbHelper.deleteAllData();

      Data.map((e) async {
        int res = await DBHelper.dbHelper.insertData(
          id: e["id"],
          userId: e["userId"],
          title: e["title"], /*value: e["completed"]*/
        );

        // print(res);
      }).toList();

      todosListData = await DBHelper.dbHelper.fetchAllData();

      // print(todosListData);
    }
  }

  void initState() {
    super.initState();
    getDBInit();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("JSONDataBase"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const APIHomePage(),
                      ));
                },
                icon: const Icon(Icons.grid_on_sharp))
          ],
        ),
        body: FutureBuilder(
          future: DBHelper.dbHelper.fetchAllData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else if (snapshot.hasData) {
              List<Todos> data = snapshot.data as List<Todos>;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Text("Title: ${data[i].title}"),
                      subtitle: Text("User Id: ${data[i].userId.toString()}"),
                      leading: Text(
                        data[i].id.toString(),
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
