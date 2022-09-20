import 'package:flutter/material.dart';

class Todos {
  final int id;
  final int userId;
  final String title;
  /*final bool value;*/

  Todos({
    required this.id,
    required this.userId,
    required this.title,
    /*  required this.value*/
  });

  factory Todos.fromMap({required Map m}) {
    return Todos(
      id: m["id"],
      userId: m["userId"],
      title: m["title"], /* value: m["completed"]*/
    );
  }
}
