import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plateform_converter_application/screens/android%20screens/Widgets/globals.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  int currentIndex = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Contact"),
      ),
      body: Stepper(
        currentStep: currentIndex,
        onStepTapped: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        onStepContinue: () {
          if (currentIndex < 2) {
            setState(() {
              currentIndex++;
            });
          } else if (currentIndex == 2) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Save Contact")));
            var Result = ContactDetails(
                name: nameController.text, message: msgController.text);
            ContactList.add(Result);
          }
        },
        onStepCancel: () {
          if (currentIndex > 0) {
            setState(() {
              currentIndex--;
            });
          }
        },
        steps: [
          Step(
              title: Text("PROFILE PHOTO"),
              subtitle: Text("Add Profile Photo"),
              content: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 50,
                child: Icon(CupertinoIcons.person),
              )),
          Step(
              title: Text("Name"),
              subtitle: Text("Enter Name"),
              content: TextField(
                controller: nameController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              )),
          Step(
              title: Text("DISCRIPTION"),
              subtitle: Text("Enter Discription"),
              content: TextField(
                controller: msgController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ))
        ],
      ),
    );
  }
}
