import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'logic.dart';

class Contact_Page extends StatefulWidget {
  const Contact_Page({Key? key}) : super(key: key);

  @override
  _Contact_PageState createState() => _Contact_PageState();
}

class _Contact_PageState extends State<Contact_Page> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: nameCantroller,
                  validator: (value) {
                    if (value != null &&
                        RegExp(r'^[a-z A-Z]{2,50}$').hasMatch(value)) {
                      return null;
                    } else {
                      return "Please Enter valid Name";
                    }
                  },
                  focusNode: nameFocusNode,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(CupertinoIcons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: emailCantroller,
                  validator: (value) {
                    if (value != null &&
                        RegExp(r'^\S+@\S+\.\S+$').hasMatch(value)) {
                      return null;
                    } else {
                      return "Please Enter valid Email";
                    }
                  },
                  focusNode: emailFocusNode,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(CupertinoIcons.mail),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: phoneCantroller,
                  validator: (value) {
                    if (value != null &&
                        RegExp(r'^[6 7 8 9][0-9]{9}$').hasMatch(value)) {
                      return null;
                    } else {
                      return "Please Enter valid Phone Number";
                    }
                  },
                  focusNode: phoneFocusNode,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Phone",
                      prefixIcon: Icon(CupertinoIcons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: addressCantroller,
                  focusNode: addressFocusNode,
                  textInputAction: TextInputAction.done,
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "Address",
                      prefixIcon: Icon(CupertinoIcons.location),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    if (formkey.currentState!.validate()) {}

                    ;
                  },
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient:
                            LinearGradient(colors: [conGradOne, conGradTwo])),
                    child: Center(
                        child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
