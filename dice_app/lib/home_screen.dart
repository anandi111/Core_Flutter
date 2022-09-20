import 'dart:ffi';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: 400,
                    child: Opacity(
                      opacity: 0.4,
                      child: Image.asset(
                        'image/nature.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Mother Nature",
                        style: TextStyle(
                            color: Colors.lightGreen,
                            letterSpacing: 3,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 500,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.lightGreenAccent, width: 3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset(
                          'image/baby_elephant.jpg',
                          width: 500,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/tiger.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/panda.webp'),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/oragutan.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/puppys.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/dolphin.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/deer.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset('image/lion.jpg'),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 150,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightGreen, width: 3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.asset("image/huming_bird.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("image/iata_bird.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("image/parrot.webp"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("image/sparrow.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("image/suqqirrel.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("image/sparrow.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset("image/eagle.jpg"),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
