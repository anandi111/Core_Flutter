import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gst_calc/color.dart';

void main() {
  runApp(MaterialApp(home: GstCalculator()));
}

class GstCalculator extends StatefulWidget {
  const GstCalculator({Key? key}) : super(key: key);

  @override
  _GstCalculatorState createState() => _GstCalculatorState();
}

class _GstCalculatorState extends State<GstCalculator> {
  ///Global Variables..
  String firstNumber = "";
  var originalPrice = 0;
  var finalPrice = 0.00;
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),

            ///First Container.....
            Container(
              height: 40,
              width: double.infinity,
              color: colorContainer,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ORIGINAL PRICE",
                      style: TextStyle(
                          fontSize: 18,
                          color: colorGrey,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${firstNumber} Rs.",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorGrey,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///Second Container....
            Container(
              height: 80,
              width: double.infinity,
              color: colorContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "GST",
                    style: TextStyle(
                        fontSize: 20,
                        color: colorGrey,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          colorC1 = colorOrange;
                          colorC2 = colorContainer;
                          colorC3 = colorContainer;
                          colorC4 = colorContainer;
                          colorC5 = colorContainer;
                          colorT1 = Colors.white;
                          colorT2 = colorGrey;
                          colorT3 = colorGrey;
                          colorT4 = colorGrey;
                          colorT5 = colorGrey;

                          originalPrice = int.parse(firstNumber);
                          finalPrice =
                              ((originalPrice * 3) / 100) + originalPrice;

                          rate = ((originalPrice * 3) / 100) / 2;

                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: colorC1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "3%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: colorT1),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          colorC1 = colorContainer;
                          colorC2 = colorOrange;
                          colorC3 = colorContainer;
                          colorC4 = colorContainer;
                          colorC5 = colorContainer;
                          colorT1 = colorGrey;
                          colorT2 = Colors.white;
                          colorT3 = colorGrey;
                          colorT4 = colorGrey;
                          colorT5 = colorGrey;

                          originalPrice = int.parse(firstNumber);
                          finalPrice =
                              ((originalPrice * 5) / 100) + originalPrice;

                          rate = ((originalPrice * 5) / 100) / 2;

                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: colorC2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "5%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: colorT2),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          colorC1 = colorContainer;
                          colorC2 = colorContainer;
                          colorC3 = colorOrange;
                          colorC4 = colorContainer;
                          colorC5 = colorContainer;
                          colorT1 = colorGrey;
                          colorT2 = colorGrey;
                          colorT3 = Colors.white;
                          colorT4 = colorGrey;
                          colorT5 = colorGrey;

                          originalPrice = int.parse(firstNumber);
                          finalPrice =
                              ((originalPrice * 12) / 100) + originalPrice;

                          rate = ((originalPrice * 12) / 100) / 2;

                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: colorC3,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "12%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: colorT3),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          colorC1 = colorContainer;
                          colorC2 = colorContainer;
                          colorC3 = colorContainer;
                          colorC4 = colorOrange;
                          colorC5 = colorContainer;
                          colorT1 = colorGrey;
                          colorT2 = colorGrey;
                          colorT3 = colorGrey;
                          colorT4 = Colors.white;
                          colorT5 = colorGrey;

                          originalPrice = int.parse(firstNumber);
                          finalPrice =
                              ((originalPrice * 18) / 100) + originalPrice;

                          rate = ((originalPrice * 18) / 100) / 2;

                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: colorC4,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "18%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: colorT4),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          colorC1 = colorContainer;
                          colorC2 = colorContainer;
                          colorC3 = colorContainer;
                          colorC4 = colorContainer;
                          colorC5 = colorOrange;
                          colorT1 = colorGrey;
                          colorT2 = colorGrey;
                          colorT3 = colorGrey;
                          colorT4 = colorGrey;
                          colorT5 = Colors.white;

                          originalPrice = int.parse(firstNumber);
                          finalPrice =
                              ((originalPrice * 28) / 100) + originalPrice;

                          rate = ((originalPrice * 28) / 100) / 2;

                          setState(() {});
                        },
                        child: Container(
                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            color: colorC5,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "28%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: colorT5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///Third Container...
            Container(
              height: 40,
              width: double.infinity,
              color: colorContainer,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "FINAL PRICE",
                      style: TextStyle(
                          fontSize: 18,
                          color: colorGrey,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${finalPrice.toStringAsFixed(2)} Rs.",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorGrey,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///Forth Container..
            Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                color: colorContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "CGST/SGST",
                    style: TextStyle(
                        fontSize: 23,
                        color: colorGrey,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    rate.toStringAsFixed(2).toString() + "",
                    style: TextStyle(
                        fontSize: 17,
                        color: colorGrey,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///Calculation Start...
            Row(
              children: [
                SizedBox(
                  height: 380,
                  width: 300,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [
                      ///First Line...
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 7.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "7",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 8.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "8",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 9.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "9",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),

                      ///Second Line..
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 4.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "4",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 5.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 6.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "6",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),

                      ///Third Line..
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 1.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 2.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "2",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 3.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Center(
                              child: Text(
                            "3",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),

                      ///Forth Line..
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + "00".toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          child: Center(
                              child: Text(
                            "00",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          firstNumber = firstNumber + 0.toString();
                          setState(() {});
                        },
                        child: Container(
                          height: 80,
                          width: 100,
                          child: Center(
                              child: Text(
                            "0",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      InkWell(
                        /*onTap: () {
                          setState(() {
                            firstNumber = firstNumber + ".".toString();
                          });
                        },*/
                        child: Container(
                          height: 80,
                          width: 100,
                          child: Center(
                              child: Text(
                            ".",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        firstNumber = "".toString();
                        originalPrice = 0;
                        finalPrice = 0.00;
                        rate = 0;
                        setState(() {});
                      },
                      child: Container(
                        width: 80,
                        height: 180,
                        decoration: BoxDecoration(
                          color: colorOrange,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                            child: Text(
                          "AC",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // firstNumber

                        setState(() {});
                      },
                      child: InkWell(
                        onTap: () {
                          firstNumber =
                              firstNumber.substring(0, firstNumber.length - 1);
                          originalPrice = int.parse(firstNumber);

                          if (firstNumber.length == 1) {
                            firstNumber = "";
                          }

                          setState(() {});
                        },
                        child: Container(
                          width: 80,
                          height: 180,
                          decoration: BoxDecoration(
                            color: colorOrange,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                              child: Text(
                            "⌫",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
