import 'dart:developer';
import 'package:age_calculator/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:age_calculator/string.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ///todaysDateController
  TextEditingController todaysDateController = TextEditingController();
  FocusNode todaysDateFocus = FocusNode();

  ///ddController
  TextEditingController dateController = TextEditingController();
  FocusNode dateFocus = FocusNode();

  ///mmController
  TextEditingController monthController = TextEditingController();
  FocusNode monthFocus = FocusNode();

  ///yyyyController
  TextEditingController yearController = TextEditingController();
  FocusNode yearFocus = FocusNode();

  ///globle
  DateTime dateTime = DateTime.now();
  int? birthDate;
  int? birthMonth;
  int? birthYear;
  int presentYear = 0;
  int presentMonth = 0;
  int presentDate = 0;
  int nextMonth = 0;
  int nextDate = 0;
  bool isTodayDate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black45,
            appBar: AppBar(
              backgroundColor: colorGreen,
              title: Center(
                  child: Text(
                ageCalculator,
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todaysDate,
                      style: TextStyle(fontSize: 18, color: colorGreen),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: todaysDateController,
                      focusNode: todaysDateFocus,
                      textInputAction: TextInputAction.next,
                      // log(todaysDate, name: "today's date");
                      onSubmitted: (input) {
                        FocusScope.of(context).requestFocus(dateFocus);
                        if (input.isEmpty) {
                          isTodayDate = true;
                        } else {
                          isTodayDate = false;
                        }
                      },
                      onTap: () {
                        todaysDateController.text =
                            "${dateTime.day}-${dateTime.month}-${dateTime.year}";
                        setState(() {});
                      },
                      inputFormatters: [
                        // FilteringTextInputFormatter.allow("Anandi")
                        // LengthLimitingTextInputFormatter(2),
                      ],
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        paste: true,
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: colorGreen),
                      cursorColor: colorWhite,
                      decoration: InputDecoration(
                          // errorText: isTodayDate
                          //     ? null
                          //     : InputBorder(
                          //         borderSide: BorderSide(color: Colors.red)),
                          hintText: "Enter Today's Date",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            CupertinoIcons.calendar_circle,
                            color: colorGreen,
                            size: 35,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: colorWhite,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: colorWhite))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      dateOfBirth,
                      style: TextStyle(fontSize: 18, color: colorGreen),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 103,
                          child: TextField(
                            controller: dateController,
                            focusNode: dateFocus,
                            textInputAction: TextInputAction.next,
                            onSubmitted: (input) {
                              FocusScope.of(context).requestFocus(monthFocus);
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 2,
                            style: TextStyle(color: colorGreen),
                            toolbarOptions: ToolbarOptions(
                              copy: true,
                              paste: true,
                            ),
                            cursorColor: colorGreen,
                            decoration: InputDecoration(
                                hintText: "DD",
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: colorWhite)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: colorWhite))),
                          ),
                        ),
                        SizedBox(
                          width: 103,
                          child: TextField(
                            controller: monthController,
                            focusNode: monthFocus,
                            textInputAction: TextInputAction.next,
                            onSubmitted: (input) {
                              FocusScope.of(context).requestFocus(yearFocus);
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colorGreen),
                            toolbarOptions: ToolbarOptions(
                              copy: true,
                              paste: true,
                            ),
                            cursorColor: colorWhite,
                            decoration: InputDecoration(
                                hintText: "MM",
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: colorWhite)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: colorWhite))),
                          ),
                        ),
                        SizedBox(
                          width: 103,
                          child: TextField(
                            controller: yearController,
                            focusNode: yearFocus,
                            textInputAction: TextInputAction.done,
                            onSubmitted: (input) {
                              FocusScope.of(context).requestFocus();
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 4,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colorGreen),
                            toolbarOptions: ToolbarOptions(
                              copy: true,
                              paste: true,
                            ),
                            cursorColor: colorWhite,
                            decoration: InputDecoration(
                                hintText: "YYYY",
                                hintStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: colorWhite)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: colorWhite))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            todaysDateController.clear();
                            dateController.clear();
                            monthController.clear();
                            yearController.clear();
                            presentDate = 0;
                            presentMonth = 0;
                            presentYear = 0;
                            nextDate = 0;
                            nextMonth = 0;
                            setState(() {});
                          },
                          child: Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: colorWhite, width: 1)),
                            child: Center(
                              child: Text(
                                clear,
                                style: TextStyle(
                                    color: colorGreen,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            birthDate = int.parse(dateController.text);
                            // log(birthDate.toString(), name: "Birth Date");

                            birthMonth = int.parse(monthController.text);
                            // log(birthMonth.toString(), name: "Birth Date");

                            birthYear = int.parse(yearController.text);
                            // log(birthYear.toString(), name: "Birth Date");

                            ///PRESENTYEAR
                            // presentYear = dateTime.year - birthYear!;
                            // // log(presentYear.toString(), name: "Birth Date");
                            if (birthMonth! >= dateTime.month) {
                              presentYear = (dateTime.year - birthYear!) - 1;
                              // log(presentYear.toString(), name: "Birth Date");
                            } else {
                              presentYear = dateTime.year - birthYear!;
                              // log(presentYear.toString(), name: "Birth Date");
                            }

                            ///PRESENTDATE
                            if (dateTime.day >= birthDate!) {
                              presentDate = dateTime.day - birthDate!;
                              // // log(presentAge.toString(), name: "Birth Date");
                            } else {
                              presentDate = birthDate! - dateTime.day;
                              // // log(presentAge.toString(), name: "Birth Date");
                            }

                            ///PRESENTMONTH
                            if (dateTime.month >= birthMonth!) {
                              presentMonth = dateTime.month - birthMonth!;
                              // // log(presentAge.toString(), name: "Birth Date");
                            } else {
                              presentMonth = birthMonth! - dateTime.month;
                              // // log(presentAge.toString(), name: "Birth Date");
                            }

                            ///NEXTMONTH
                            if (dateTime.month > birthMonth!) {
                              if (dateTime.month > birthMonth!) {
                                nextMonth = (12 - dateTime.month) + birthMonth!;
                                // // log(presentAge.toString(), name: "Birth Date");
                              } else {
                                nextMonth = (12 - dateTime.month) + birthMonth!;
                                // // log(presentAge.toString(), name: "Birth Date");
                              }
                            } else {
                              if (dateTime.month < birthMonth!) {
                                nextMonth = birthMonth! - dateTime.month;
                                // // log(presentAge.toString(), name: "Birth Date");
                              } else {
                                nextMonth = dateTime.month - birthMonth!;

                                // // log(presentAge.toString(), name: "Birth Date");
                              }
                            }

                            ///NEXTDATE
                            if (dateTime.day >= birthDate!) {
                              nextDate = dateTime.day - birthDate!;
                              // // log(presentAge.toString(), name: "Birth Date");
                            } else {
                              nextDate = birthDate! - dateTime.day;
                              // // log(presentAge.toString(), name: "Birth Date");
                            }

                            setState(() {});
                          },
                          child: Container(
                            height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: colorGreen),
                            child: Center(
                              child: Text(
                                calculate,
                                style: TextStyle(
                                    color: colorWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "presentAge",
                      style: TextStyle(
                        color: colorWhite,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: colorGreen,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "${presentYear}\nYear",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${presentMonth}\nMonth",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${presentDate}\nDate",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "nextBirthday",
                      style: TextStyle(
                        color: colorWhite,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: colorGreen,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "${nextMonth}\nMonth",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${nextDate}\nDate",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
