import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosHomePage extends StatefulWidget {
  const IosHomePage({Key? key}) : super(key: key);

  @override
  State<IosHomePage> createState() => _IosHomePageState();
}

class _IosHomePageState extends State<IosHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Plateform Converter"),
        ),
        child: Column(
          children: [
            const Spacer(),
            CupertinoTabBar(items: const [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone)),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.star)),
            ])
          ],
        ));
  }
}
