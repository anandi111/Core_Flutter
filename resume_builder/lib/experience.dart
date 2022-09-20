import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
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
                          "Experiance",
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
                      "Company Name",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: comNameCantroller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "New Enterprise, San Francisco",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Roles",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: expSchoolCantroller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Quality Test Engineer",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: roleCantroller,
                      textInputAction: TextInputAction.done,
                      maxLines: 3,
                      decoration: InputDecoration(
                          hintText:
                              "Working with team members to come up with new concepts and products analysis..",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Employed Status",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 180,
                          child: RadioListTile(
                              title: Text("Previously Employed"),
                              value: "Previously Employed",
                              groupValue: empStatus,
                              onChanged: (data) {
                                setState(() {
                                  empStatus = data;
                                });
                              }),
                        ),
                        Container(
                          width: 180,
                          child: RadioListTile(
                              title: Text("Currently Employed"),
                              value: "Currently Employed",
                              groupValue: empStatus,
                              onChanged: (data) {
                                setState(() {
                                  empStatus = data;
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Date Joined",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: expDateCantroller,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "DD/MM/YYYY",
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
