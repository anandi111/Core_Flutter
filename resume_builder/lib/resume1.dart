import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class EditResume extends StatefulWidget {
  const EditResume({Key? key}) : super(key: key);

  @override
  _EditResumeState createState() => _EditResumeState();
}

class _EditResumeState extends State<EditResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                width: 50,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [conGradOne, conGradTwo]),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Resume Builder",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: colorIndigoAccent,
                      width: 1,
                    )),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: FileImage(File(image!.path)),
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              ///Education part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Education",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 200,
                                        height: 10,
                                        child: TextField(
                                          style: TextStyle(fontSize: 10),
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                        )),
                                    /*Text(
                                      "=> Course = ${courseCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),*/
                                    Text(
                                      "=> ${schoolNameCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> CGP = ${schoolMarkCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Year of Pass = ${yearPassCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),

                              ///Personal Detail part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Personal Details",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> DOB = ${DOBCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Marital Status = ${maritalStatus}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Language Known = English, Hindi",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Nationality = ${nationalityCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),

                              ///Achievement Detail part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Achievement",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            color: Colors.white,
                            height: 500,
                            width: 1,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Anandi Chovatiya",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: colorIndigoAccent),
                              ),
                              Text(
                                "Flutter Developer",
                                style: TextStyle(
                                    fontSize: 10, color: colorIndigoAccent),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              ///Work Experiance part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Work Experiance",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> Company Name = ${comNameCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Roles = ${expSchoolCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Employee Status = ${empStatus}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Date Joined = ${expDateCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              ///Skills Experiance part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Skills",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> C",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> C++",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Dart",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Flutter",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              ///Carrier Obj part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Carrier Objectives",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> ${careerObjCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Current Designation = ${currentDesiCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              ///Area of Interest part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Area of Interest",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> Reading",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Photography",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
