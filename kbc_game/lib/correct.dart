import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:kbc_game/restart.dart';
import 'logic.dart';

class Correct_page extends StatefulWidget {
  Correct_page({Key? key, required this.score, required this.index})
      : super(key: key);
  int score = 0;
  int index = 0;

  @override
  _Correct_pageState createState() => _Correct_pageState();
}

class _Correct_pageState extends State<Correct_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 400,
              ),
              Image.asset(
                "images/fire-cracker.png",
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Answer is Correct",
                style: TextStyle(fontSize: 25, color: Colors.indigoAccent),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Your Won ${widget.score}",
                  style: TextStyle(fontSize: 25, color: Colors.orangeAccent)),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  if (questionIndex == 0) {
                    log("hello");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Restart_page()));
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  height: 60,
                  width: 190,
                  decoration: BoxDecoration(
                    color: Color(0xff363636),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
