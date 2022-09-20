import 'package:flutter/material.dart';
import 'package:login_logout/Screens/home_page.dart';
import 'package:login_logout/Screens/login_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    initialRoute: "Login",
    routes: {
      "/": (context) => HomeScreen(),
      "Login": (context) => LoginScreen(),
    },
  ));
}
