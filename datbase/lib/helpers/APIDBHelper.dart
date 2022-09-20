import 'package:datbase/modals/todosModal.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database? db;

class APIDBHelper {
  ///intialize private named constructor
  APIDBHelper._();

  ///Create an Object with reference of private constructer
  static final APIDBHelper apidbHelper = APIDBHelper._();

  ///TODO:initDB()
  Future<Database?> initDB() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo2.db');

    // open the database
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE APITodos (id INTEGER PRIMARY KEY,  userId INTEGER, title TEXT, value TEXT);');
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
        "INSERT INTO APITodos (id, userId, title, value) VALUES('$id','$userId','$title','ok');";

    return await db!.rawInsert(query);
  }

  ///TODO:updateData()

  ///TODO:fetchAllData()
  Future<List<Todos>> fetchAllData() async {
    db = await initDB();

    String query = "SELECT * FROM APITodos;";

    List<Map<String, Object?>> todosList = await db!.rawQuery(query);

    List<Todos> cusTodosList =
        todosList.map((e) => Todos.fromMap(m: e)).toList();

    return cusTodosList;
  }

  ///TODO:fetchSingleData()
  ///TODO:deleteData()
  Future<int> deleteData({required int id}) async {
    db = await initDB();

    String query = "DELETE FROM APITodos WHERE id=$id;";

    return await db!.rawDelete(query);
  }

  ///TODO:deleteAllData()
  Future<int> deleteAllData() async {
    db = await initDB();

    String query = "DELETE FROM APITodos;";

    return await db!.rawDelete(query);
  }
}
