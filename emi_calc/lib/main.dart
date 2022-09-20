import 'package:emi_calc/color.dart';
import 'package:emi_calc/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    prise = (((loanAmountValue * interestRateValue) / 100) + loanAmountValue) /
        loanTenureValue;

    super.initState();
  }

  ///Slider Variables...
  var loanAmountValue = 100000.0;
  var interestRateValue = 10.0;
  var loanTenureValue = 24.0;

  ///Calculate Variables...
  var prise = 0.00;
  var a = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colorBlue,
          centerTitle: true,
          title: Text(
            emiCalculator,
            style: TextStyle(
                fontSize: 22, color: colorWhite, fontWeight: FontWeight.bold),
          ),
          leading: Icon(
            CupertinoIcons.square_grid_2x2,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 700,
            width: double.infinity,
            color: colorBlue,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  yourLoanEmiIs,
                  style: TextStyle(color: colorYourLoanEmiIs),
                ),
                SizedBox(
                  height: 10,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "\u{20B9} ${prise.toStringAsFixed(2).toString()}",
                    style: TextStyle(
                        fontSize: 28,
                        color: colorWhite,
                        fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: " Month",
                    style: TextStyle(
                        fontSize: 12,
                        color: colorYourLoanEmiIs,
                        fontWeight: FontWeight.w400),
                  )
                ])),
                SizedBox(
                  height: 30,
                ),

                ///Main Box.....
                Container(
                    width: double.infinity,
                    height: 591,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),

                          ///first...
                          Text(
                            loanAmount,
                            style: TextStyle(
                                color: colorLoanAmount,
                                fontSize: 23,
                                fontWeight: FontWeight.w700),
                          ),
                          Stack(
                            children: [
                              Text(
                                loanAmount,
                                style: TextStyle(
                                    color: colorLoanAmount.withOpacity(0.1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 45),
                              ),
                              Positioned(
                                top: 20,
                                left: 100,
                                bottom: 0,
                                child: Text(
                                  loanAmountValue.toInt().toString(),
                                  style: TextStyle(
                                      color: colorLoanAmount,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 350,
                            height: 25,
                            child: SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 0.1,
                                inactiveTrackColor: colorInactiveTrack,
                                activeTrackColor: colorInactiveTrack,
                                thumbColor: colorBlue,
                              ),
                              child: Slider(
                                value: loanAmountValue,
                                max: 300000,
                                min: 1,
                                onChanged: (data) {
                                  loanAmountValue = data;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          ///Second...
                          Text(
                            interestRate,
                            style: TextStyle(
                                color: colorLoanAmount,
                                fontSize: 23,
                                fontWeight: FontWeight.w700),
                          ),
                          Stack(
                            children: [
                              Text(
                                interestRate,
                                style: TextStyle(
                                    color: colorLoanAmount.withOpacity(0.1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 45),
                              ),
                              Positioned(
                                top: 20,
                                left: 110,
                                bottom: 0,
                                child: Text(
                                  "${interestRateValue.toInt().toString()}%",
                                  style: TextStyle(
                                      color: colorLoanAmount,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 350,
                            height: 25,
                            child: SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 0.1,
                                inactiveTrackColor: colorInactiveTrack,
                                activeTrackColor: colorInactiveTrack,
                                thumbColor: colorBlue,
                              ),
                              child: Slider(
                                value: interestRateValue,
                                max: 100,
                                min: 1,
                                onChanged: (data) {
                                  interestRateValue = data;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          ///third...
                          Text(
                            loanTenure,
                            style: TextStyle(
                                color: colorLoanAmount,
                                fontSize: 23,
                                fontWeight: FontWeight.w700),
                          ),
                          Stack(
                            children: [
                              Text(
                                loanTenure,
                                style: TextStyle(
                                    color: colorLoanAmount.withOpacity(0.1),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 45),
                              ),
                              Positioned(
                                top: 20,
                                left: 80,
                                bottom: 0,
                                child: Text(
                                  "${loanTenureValue.toInt().toString()} Months",
                                  style: TextStyle(
                                      color: colorLoanAmount,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 350,
                            height: 25,
                            child: SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 0.1,
                                inactiveTrackColor: colorInactiveTrack,
                                activeTrackColor: colorInactiveTrack,
                                thumbColor: colorBlue,
                              ),
                              child: Slider(
                                value: loanTenureValue,
                                max: 80,
                                min: 1,
                                onChanged: (data) {
                                  loanTenureValue = data;
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),

                          ///Calculate Button...
                          InkWell(
                            onTap: () {
                              prise = (((loanAmountValue * interestRateValue) /
                                          100) +
                                      loanAmountValue) /
                                  loanTenureValue;

                              setState(() {});
                            },
                            child: Container(
                              height: 70,
                              width: 300,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: colorBlue,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  calculate,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: colorBlue),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                /* Future<T dyna>showModalBottomSheet<T>(
                  builder: (context) => Container(),
                  context: context,
                  // onClosing: () {},
                  // builder: (context) => Container(),
                 */ /* initialChildSize: 0.5,
                  maxChildSize: 0.5,
                  minChildSize: 0.3,
                  builder: (context, scrollController) => Container(
                    height: 500,*/ /*
                  ),*/
                GestureDetector(
                  onPanCancel: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                              height: 100,
                            ));
                  },
                  child: Icon(Icons.arrow_upward_sharp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
