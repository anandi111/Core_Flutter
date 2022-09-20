import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/personal_details.dart';
import 'package:resume_builder/projects.dart';
import 'package:resume_builder/references.dart';
import 'package:resume_builder/technical_skills.dart';
import 'carrier_objectives.dart';
import 'contact_info.dart';
import 'declaration.dart';
import 'education.dart';
import 'experience.dart';
import 'logic.dart';
import 'resume.dart';

class Resume_Workspace extends StatefulWidget {
  const Resume_Workspace({Key? key}) : super(key: key);

  @override
  _Resume_WorkspaceState createState() => _Resume_WorkspaceState();
}

class _Resume_WorkspaceState extends State<Resume_Workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 450,
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.indigoAccent,
                            gradient: LinearGradient(
                                colors: [conGradOne, conGradTwo]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Resume Workspace",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Build Option",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          // Container(
                          //   height: 350,
                          //   child: ListView(
                          //     children: [
                          //       ListTile.divideTiles(
                          //         context: context,
                          //           color: Colors.grey,
                          //           tiles: [
                          //             ListTile(
                          //               title: Text("Helo"),
                          //             ),
                          //           ]).toList({},growable: true),
                          //     ],
                          //   ),
                          // ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactInfo()));
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/image/contact_detail-removebg-preview (1).png",
                                  height: 40,
                                  width: 40,
                                  color: Color(0xff4c72c3),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Contact Info",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Spacer(),
                                Icon(CupertinoIcons.right_chevron),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CarrierObjectives()));
                            },
                            child: ConOption(
                                Image: "assets/image/briefcase.png",
                                optionName: "Carrier Objectives"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PersonalDeatails()));
                            },
                            child: ConOption(
                                Image: "assets/image/account.png",
                                optionName: "Personal Details"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Education()));
                            },
                            child: ConOption(
                                Image: "assets/image/graduation-cap.png",
                                optionName: "Education"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Experience()));
                            },
                            child: ConOption(
                                Image: "assets/image/logical-thinking.png",
                                optionName: "Experiances"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TechnicalSkills()));
                            },
                            child: ConOption(
                                Image: "assets/image/certificate.png",
                                optionName: "Techanical Skills"),
                          ),
                          ConOption(
                              Image: "assets/image/open-book.png",
                              optionName: "Interest/Hobbies"),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Projects()));
                            },
                            child: ConOption(
                                Image: "assets/image/project-management.png",
                                optionName: "Projects"),
                          ),
                          ConOption(
                              Image: "assets/image/experience.png",
                              optionName: "Achievements"),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => References()));
                            },
                            child: ConOption(
                                Image: "assets/image/handshake.png",
                                optionName: "References"),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Declaration()));
                            },
                            child: ConOption(
                                Image: "assets/image/declaration.png",
                                optionName: "Declaratiom"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 180,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Resume()));
                  },
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient:
                            LinearGradient(colors: [conGradOne, conGradTwo])),
                    child: Icon(
                      Icons.done,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ConOption extends StatefulWidget {
  ConOption({Key? key, required this.Image, required this.optionName})
      : super(key: key);
  String Image;
  String optionName;

  @override
  _ConOptionState createState() => _ConOptionState();
}

class _ConOptionState extends State<ConOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          Container(
            height: 50,
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    widget.Image,
                    height: 30,
                    width: 30,
                    color: colorIndigoAccent,
                  ),
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  widget.optionName,
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.right_chevron,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
