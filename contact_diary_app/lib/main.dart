import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'add_page.dart';
import 'detail_page.dart';
import 'logic.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: true,
    theme: ThemeData(
      appBarTheme: AppBarTheme(color: Colors.blue),
      brightness: Brightness.light,
    ),
    themeMode: ThemeMode.system,
    darkTheme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.pinkAccent),
        brightness: Brightness.dark),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<conDetail> conInfo = [
    conDetail(
        firstName: "polish", email: "suratpolish@gmail.com", phoneNum: "100"),
    conDetail(
        firstName: "Fire Station",
        email: "suratfireSta@gmail.com",
        phoneNum: "101"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.brightness_6,
            color: Colors.white,
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: conInfo.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(
                      conName: conInfo[index].firstName.toString(),
                      moNum: conInfo[index].phoneNum.toString(),
                    );
                  },
                ));
              },
              title: Text("${conInfo[index].firstName} "),
              subtitle: Text("${conInfo[index].phoneNum}"),
              trailing: Icon(
                Icons.phone,
                color: Colors.green,
              ),
              onLongPress: () {
                setState(() {
                  conInfo.removeAt(index);
                });
                log("long Press");
              },
              leading: Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: Icon(CupertinoIcons.person_solid),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPage(),
              )) as conDetail;
          setState(() {
            conInfo.add(result);
          });
        },
        child: Icon(Icons.add),
        backgroundColor: colorBlue,
      ),
    );
  }
}

class conDetail {
  String? firstName;
  String? lastName;
  String? phoneNum;
  String? email;
  conDetail({this.firstName, this.lastName, this.phoneNum, this.email});
}
