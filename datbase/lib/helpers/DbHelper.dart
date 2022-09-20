import 'package:datbase/modals/todosModal.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database? db;

class DBHelper {
  ///intialize private named constructor
  DBHelper._();

  ///Create an Object with reference of private constructer
  static final DBHelper dbHelper = DBHelper._();

  ///TODO:initDB()
  Future<Database?> initDB() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    // open the database
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Todos (id INTEGER PRIMARY KEY,  userId INTEGER, title TEXT, value TEXT);');
    });

    return db!;
  }

  ///TODO:insertData()
  Future<int> insertData({
    required int id,
    required int userId,
    required String title,
    /*required bool value*/
  }) async {
    db = await initDB();

    String query =
        "INSERT INTO Todos (id, userId, title, value) VALUES('$id','$userId','$title','ok');";

    return await db!.rawInsert(query);
  }

  ///TODO:updateData()

  ///TODO:fetchAllData()
  Future<List<Todos>> fetchAllData() async {
    db = await initDB();

    String query = "SELECT * FROM Todos;";

    List<Map<String, Object?>> todosList = await db!.rawQuery(query);

    List<Todos> cusTodosList =
        todosList.map((e) => Todos.fromMap(m: e)).toList();

    return cusTodosList;
  }

  ///TODO:fetchSingleData()
  ///TODO:deleteData()

  ///TODO:deleteAllData()
  Future<int> deleteAllData() async {
    db = await initDB();

    String query = "DELETE FROM Todos;";

    return await db!.rawDelete(query);
  }
}
