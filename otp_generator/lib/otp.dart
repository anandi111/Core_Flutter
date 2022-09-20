import 'dart:math';
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color.dart';

class otp_home extends StatefulWidget {
  const otp_home({Key? key}) : super(key: key);

  @override
  _otp_homeState createState() => _otp_homeState();
}

class _otp_homeState extends State<otp_home> {
  ///Controller..
  TextEditingController lengthController = TextEditingController();
  int length = 0;

  ///Global Variables..
  Random random = Random();
  String otp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 90,
                ),
                Text(
                  "OTP Generator",
                  style: TextStyle(color: colorOTPGenerator, fontSize: 30),
                ),
                SizedBox(
                  height: 90,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: lengthController,
                    /* inputFormatters: [
                      LengthLimitingTextInputFormatter(2),
                      // FilteringTextInputFormatter.allow("1"),
                    ],*/
                    cursorColor: colorOTPGenerator,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: colorTextField,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: "Enter OTP Length",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorUnderLine)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorUnderLine)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),

                ///Generate Otp Button..
                InkWell(
                  onTap: () {
                    otp = "";
                    for (int i = 0; i < int.parse(lengthController.text); i++) {
                      otp = otp + random.nextInt(9).toString();
                    }

                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 270,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: colorTextField.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(3, 3),
                          )
                        ],
                        gradient: LinearGradient(colors: [
                          colorGeneratorOTPContainer1,
                          colorGeneratorOTPContainer2,
                        ])),
                    child: Center(
                      child: Text(
                        "Generate OTP",
                        style: TextStyle(
                            color: colorBG,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),

                ///Show Otp Box..
                Container(
                  decoration: BoxDecoration(
                    color: colorTextField,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        otp,
                        style: TextStyle(
                            letterSpacing: 2,
                            color: colorBG,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),

                ///Reset Otp Button..
                InkWell(
                  onTap: () {
                    otp = "00";
                    lengthController.text = "";
                    setState(() {});
                  },
                  child: Container(
                    height: 55,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: colorTextField.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(3, 3),
                          )
                        ],
                        gradient: LinearGradient(colors: [
                          colorGeneratorOTPContainer1,
                          colorGeneratorOTPContainer2,
                        ])),
                    child: Center(
                      child: Text(
                        "Reset",
                        style: TextStyle(
                            color: colorBG,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
