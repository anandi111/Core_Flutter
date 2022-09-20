import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class PersonalDeatails extends StatefulWidget {
  const PersonalDeatails({Key? key}) : super(key: key);

  @override
  _PersonalDeatailsState createState() => _PersonalDeatailsState();
}

class _PersonalDeatailsState extends State<PersonalDeatails> {
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
                          "Personal Details",
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
                      "DOB",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: DOBCantroller,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: "DD/MM/YYY",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Marital Status",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    RadioListTile(
                        title: Text("Single"),
                        value: "Single",
                        groupValue: maritalStatus,
                        onChanged: (data) {
                          setState(() {
                            maritalStatus = data;
                          });
                        }),
                    RadioListTile(
                        title: Text("Married"),
                        value: "Married",
                        groupValue: maritalStatus,
                        onChanged: (data) {
                          setState(() {
                            maritalStatus = data;
                          });
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Language Known",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    CheckboxListTile(
                        title: Text("English"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: engLang,
                        onChanged: (data) {
                          setState(() {
                            engLang = data;
                          });
                        }),
                    CheckboxListTile(
                        title: Text("Hindi"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: hindiLang,
                        onChanged: (data) {
                          setState(() {
                            hindiLang = data;
                          });
                        }),
                    CheckboxListTile(
                        title: Text("Gujarati"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: gujLang,
                        onChanged: (data) {
                          setState(() {
                            gujLang = data;
                          });
                        }),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Nationality",
                      style: TextStyle(
                          fontSize: 20,
                          color: colorIndigoAccent,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: nationalityCantroller,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                          hintText: "Indian",
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
