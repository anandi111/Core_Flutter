import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  _DeclarationState createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 450,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  gradient: LinearGradient(colors: [conGradOne, conGradTwo]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Declaration",
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
          SwitchListTile.adaptive(
              title: Text(
                "Declaration",
              ),
              value: declaration,
              onChanged: (data) {
                setState(() {
                  declaration = data;
                });
              }),
          declaration == true
              ? Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: descriptionCantroller,
                        textInputAction: TextInputAction.next,
                        maxLines: 2,
                        decoration: InputDecoration(
                            hintText: "Descripation",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        height: 3,
                        color: Colors.indigo,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 20,
                            color: colorIndigoAccent,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: desDateCantroller,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            hintText: "DD/MM/YYYY",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Place(interview/venue/city)",
                        style: TextStyle(
                            fontSize: 20,
                            color: colorIndigoAccent,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: desPlaceCantroller,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            hintText: "Eg, Surat",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ],
                  ),
                )
              : SizedBox(
                  height: 200,
                )
        ],
      ),
    );
  }
}
