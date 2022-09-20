import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class TechnicalSkills extends StatefulWidget {
  const TechnicalSkills({Key? key}) : super(key: key);

  @override
  _TechnicalSkillsState createState() => _TechnicalSkillsState();
}

class _TechnicalSkillsState extends State<TechnicalSkills> {
  List<TextEditingController> _controllers = [
    TextEditingController(),
    TextEditingController()
  ];

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
                          "Techanical Skills",
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
                  children: [
                    Text(
                      "Enter Your Skills",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 410,
                      width: 350,
                      child: ListView.builder(
                          itemCount: _controllers.length,
                          itemBuilder: (BuildContext context, int index) {
                            _controllers.add(new TextEditingController());
                            return Container(
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: _controllers[index],
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        hintText: "C Programming",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            _controllers.add(TextEditingController());
                            setState(() {});
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [conGradOne, conGradTwo])),
                            child: Center(
                                child: Text(
                              "Add",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _controllers.remove(TextEditingController());
                            setState(() {});
                          },
                          child: Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    colors: [conGradOne, conGradTwo])),
                            child: Center(
                                child: Text(
                              "Delete",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                          ),
                        ),
                      ],
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
