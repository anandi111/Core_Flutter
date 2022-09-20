import 'dart:math';

import 'package:flutter/material.dart';

class ColorPallet extends StatefulWidget {
  const ColorPallet({Key? key}) : super(key: key);

  @override
  _ColorPalletState createState() => _ColorPalletState();
}

class _ColorPalletState extends State<ColorPallet> {
  ///Colors...
  Color colorRed = Colors.red;
  Color colorGreen = Colors.green;
  Color colorBlue = Colors.blue;
  Color colorPurple = Colors.purpleAccent;
  Color colorLightYellow = Colors.yellow;
  Color colorDarkYellow = Colors.orange;

  ///list..
  late List color;

  ///Random Number...
  int c1 = 0;
  int c2 = 1;
  int c3 = 2;
  int c4 = 3;
  int c5 = 4;
  int c6 = 5;
  Random random = Random();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    color = [
      colorRed,
      colorGreen,
      colorBlue,
      colorPurple,
      colorLightYellow,
      colorDarkYellow
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.white, Color(0xffd8e6f4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
          child: Column(
            children: [
              ///Text...
              SizedBox(
                height: 20,
              ),
              Text(
                "Color Palette\n Generator",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),

              ///Color Palette....
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                    color: color[c1],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )),
              ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  color: color[c2],
                ),
              ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  color: color[c3],
                ),
              ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  color: color[c4],
                ),
              ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  color: color[c5],
                ),
              ),
              Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                    color: color[c6],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
              ),
              Spacer(),

              ///Generate Button..
              InkWell(
                onTap: () {
                  c1 = random.nextInt(5);
                  c2 = random.nextInt(5);
                  c3 = random.nextInt(5);
                  c4 = random.nextInt(5);
                  c5 = random.nextInt(5);
                  c6 = random.nextInt(5);
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: 230,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Generate",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
