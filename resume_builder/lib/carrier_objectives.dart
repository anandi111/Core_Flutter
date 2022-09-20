import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'logic.dart';

class CarrierObjectives extends StatefulWidget {
  const CarrierObjectives({Key? key}) : super(key: key);

  @override
  _CarrierObjectivesState createState() => _CarrierObjectivesState();
}

class _CarrierObjectivesState extends State<CarrierObjectives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 450,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      gradient:
                          LinearGradient(colors: [conGradOne, conGradTwo]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Carrier Objective",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 70,
                      left: 10,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.white,
                        ),
                      )),
                  Positioned(
                    top: 220,
                    child: Container(
                      width: 412,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Career Objective",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: careerObjCantroller,
                      textInputAction: TextInputAction.next,
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText: "Description",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Current Designation",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: currentDesiCantroller,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "Software Engineer",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
