import 'package:flutter/material.dart';
import 'package:kbc_game/Home_page.dart';

class Restart_page extends StatefulWidget {
  const Restart_page({Key? key}) : super(key: key);

  @override
  _Restart_pageState createState() => _Restart_pageState();
}

class _Restart_pageState extends State<Restart_page> {
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
                "Game Over",
                style: TextStyle(fontSize: 25, color: Colors.indigoAccent),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Let's Play Again",
                  style: TextStyle(fontSize: 25, color: Colors.orangeAccent)),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_page()));
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
                      "Restart",
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
