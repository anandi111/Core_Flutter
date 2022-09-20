import 'package:flutter/material.dart';

class Incorrect_page extends StatefulWidget {
  const Incorrect_page({Key? key}) : super(key: key);

  @override
  _Incorrect_pageState createState() => _Incorrect_pageState();
}

class _Incorrect_pageState extends State<Incorrect_page> {
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
                "images/lose.png",
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Answer is InCorrect",
                style: TextStyle(fontSize: 25, color: Colors.indigoAccent),
              ),
              SizedBox(
                height: 15,
              ),
              Text("You Lose!!",
                  style: TextStyle(fontSize: 25, color: Colors.orangeAccent)),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
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
                      "Try Again",
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
