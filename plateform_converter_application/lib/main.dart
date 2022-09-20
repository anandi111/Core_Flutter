import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/android screens/Screens/android home page.dart';
import 'screens/android screens/Widgets/globals.dart';
import 'screens/ios%20screens/ios%20home%20screen.dart';

void main() {
  runApp((Global.isIos == false)
      ? const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AndroidHomePage(),
        )
      : const CupertinoApp(
          debugShowCheckedModeBanner: false,
          home: IosHomePage(),
        ));
}
