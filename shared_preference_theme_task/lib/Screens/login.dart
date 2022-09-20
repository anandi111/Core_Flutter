import 'package:flutter/material.dart';
import 'package:shared_preference_theme_task/Screens/screen%201.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool isDark = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: (isDark == false) ? ThemeData.light() : ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          actions: [
            Switch(
              value: isDark,
              onChanged: (val) async {
                final prefs = await SharedPreferences.getInstance();
                setState(() {
                  isDark = val;
                  prefs.setBool("isDark", val);
                });
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                          builder: (context) => Screen1(),
                        ))
                        .then((value) => setState(() {}));
                  },
                  child: Text("Screen 1")),
            ],
          ),
        ),
      ),
    );
  }
}
