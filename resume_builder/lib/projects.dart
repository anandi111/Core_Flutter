import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
                          "Projects",
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
                      "Project Title",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: proNameCantroller,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "Resume Builder App",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Technologies",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    CheckboxListTile(
                        title: Text("C Programming"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: ctech,
                        onChanged: (data) {
                          setState(() {
                            ctech = data;
                          });
                        }),
                    CheckboxListTile(
                        title: Text("C++"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: cpptech,
                        onChanged: (data) {
                          setState(() {
                            cpptech = data;
                          });
                        }),
                    CheckboxListTile(
                        title: Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: fluttertech,
                        onChanged: (data) {
                          setState(() {
                            fluttertech = data;
                          });
                        }),
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
                      controller: proRoleCantroller,
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
                      "Technologies",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: proTechCantroller,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "5-Programmers",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Project Descripation",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: proDescriptionCantroller,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "Enter Your Project Description",
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
