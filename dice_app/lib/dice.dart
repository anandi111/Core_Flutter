import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice_App extends StatefulWidget {
  const Dice_App({Key? key}) : super(key: key);

  @override
  _Dice_AppState createState() => _Dice_AppState();
}

class _Dice_AppState extends State<Dice_App> {
  ///String for List...
  String one = "image/image_of_dice/1.png";
  String two = "image/image_of_dice/2.png";
  String three = "image/image_of_dice/3.png";
  String four = "image/image_of_dice/4.png";
  String five = "image/image_of_dice/5.png";
  String six = "image/image_of_dice/6.png";

  ///List...
  late List<String> dice1;
  late List<String> dice2;

  ///int..
  int dice1Random = 0;
  int dice2Random = 0;
  int totalAmount = 0;
  Random random = Random();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dice1 = [one, two, three, four, five, six];
    dice2 = [one, two, three, four, five, six];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("image/image_of_dice/Background.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "Total Amount: $totalAmount",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    dice1[dice1Random],
                    height: 150,
                    width: 150,
                  ),
                  Image.asset(
                    dice2[dice2Random],
                    height: 150,
                    width: 150,
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  dice1Random = random.nextInt(5);
                  dice2Random = random.nextInt(5);

                  totalAmount = dice1Random + dice2Random + 2;

                  setState(() {});
                },
                child: Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "image/image_of_dice/Button.png",
                          ))),
                  child: Center(
                    child: Text(
                      "Roll Dice!!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
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
