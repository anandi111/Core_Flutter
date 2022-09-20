import 'package:flutter/material.dart';
import 'package:shared_preference_theme_task/Screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  isDark = prefs.getBool("isDark") ?? false;

  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
