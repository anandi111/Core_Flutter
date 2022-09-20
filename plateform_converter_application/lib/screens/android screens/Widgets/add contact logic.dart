import 'package:flutter/material.dart';

addContact() {
  return AlertDialog(
    title: Text("Add Contact"),
    content: Container(
      height: 100,
      width: 100,
      child: Stepper(steps: [
        Step(title: Text("PROFILE PHOTO"), content: Text("Add Profile Photo"))
      ]),
    ),
  );
}
