import 'dart:convert';
import 'package:datbase/helpers/APIDBHelper.dart';
import 'package:http/http.dart' as http;

import 'package:datbase/modals/todosModal.dart';
import 'package:flutter/material.dart';

class APIHomePage extends StatefulWidget {
  const APIHomePage({Key? key}) : super(key: key);

  @override
  State<APIHomePage> createState() => _APIHomePageState();
}

class _APIHomePageState extends State<APIHomePage> {
  int count = 0;
  late List<Todos> todosListData;
  Future<List<Todos>> fetchAllData = APIDBHelper.apidbHelper.fetchAllData();
  getDBInit() async {
    if (count == 0) {
      http.Response response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
      print(response.statusCode);

      List<dynamic> Data = jsonDecode(response.body);
      print(Data);

      // APIDBHelper.apidbHelper.deleteAllData();

      Data.map((e) async {
        int res = await APIDBHelper.apidbHelper.insertData(
          id: e["id"],
          userId: e["userId"],
          title: e["title"], /*value: e["completed"]*/
        );

        // print(res);
      }).toList();

      todosListData = await APIDBHelper.apidbHelper.fetchAllData();

      // print(todosListData);
    }
  }

  @override
  void initState() {
    super.initState();
    getDBInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("APIDataBase"),
        ),
        body: FutureBuilder(
          future: fetchAllData,
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
                      trailing: IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Delete Record"),
                                    content: const Text(
                                        "Are you sure to delete this record?"),
                                    actions: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateColor
                                                      .resolveWith((states) =>
                                                          Colors.red)),
                                          onPressed: () async {
                                            await APIDBHelper.apidbHelper
                                                .deleteData(id: data[i].id);
                                            setState(() {
                                              fetchAllData = APIDBHelper
                                                  .apidbHelper
                                                  .fetchAllData();
                                            });
                                            Navigator.pop(context);
                                          },
                                          child: Text("Delete")),
                                      OutlinedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Cancel"))
                                    ],
                                  );
                                });
                          },
                          icon: const Icon(
                            Icons.delete_sweep,
                            color: Colors.red,
                          )),
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
