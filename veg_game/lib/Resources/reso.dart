import 'package:flutter/material.dart';

class VegeData {
  final String image;
  final String imageKey;
  bool isDragged;
  Color color;

  VegeData(
      {required this.image,
      required this.imageKey,
      required this.isDragged,
      required this.color});
}

class Global {
  static List vegeDataList = [
    VegeData(
      image: "Assets/Images/cabbage.png",
      imageKey: "cababage",
      isDragged: false,
      color: Colors.green,
    ),
    VegeData(
      image: "Assets/Images/lemon.png",
      imageKey: "lemon",
      isDragged: false,
      color: Colors.yellow,
    ),
    VegeData(
      image: "Assets/Images/broccoli.png",
      imageKey: "broccoli",
      isDragged: false,
      color: Colors.lightGreenAccent,
    ),
    VegeData(
      image: "Assets/Images/orange.png",
      imageKey: "orange",
      isDragged: false,
      color: Colors.orange,
    ),
  ];
  static List vegeTargetDataList = [
    VegeData(
      image: "Assets/Images/broccoli.png",
      imageKey: "broccoli",
      isDragged: false,
      color: Colors.lightGreenAccent,
    ),
    VegeData(
      image: "Assets/Images/cabbage.png",
      imageKey: "cababage",
      isDragged: false,
      color: Colors.green,
    ),
    VegeData(
      image: "Assets/Images/orange.png",
      imageKey: "orange",
      isDragged: false,
      color: Colors.orange,
    ),
    VegeData(
      image: "Assets/Images/lemon.png",
      imageKey: "lemon",
      isDragged: false,
      color: Colors.yellow,
    ),
  ];
}
