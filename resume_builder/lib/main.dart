import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/routes.dart';
import 'logic.dart';
import 'resume_workshop.dart';

void main() {
  runApp(MaterialApp(
    routes: routes,
    initialRoute: "/",
    theme:
        ThemeData(fontFamily: "Source Sans Pro", primaryColor: Colors.indigo),
  ));
}

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 450,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  gradient: LinearGradient(colors: [conGradOne, conGradTwo]),
                ),
                child: Center(
                    child: Text(
                  "Resume Builder",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
              ),
              Positioned(
                top: 220,
                child: Container(
                  width: 412,
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/image/open-cardboard-box.png",
            width: 120,
            height: 120,
          ),
          Text(
            "No Resumes + Create new resume",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/resumeWorkspace");
        },
        child: Icon(CupertinoIcons.add),
        backgroundColor: colorIndigoAccent,
      ),
    );
  }
}
