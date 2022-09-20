import 'package:flutter/material.dart';
import 'package:plateformcontrollerapp/Railway%20Recruitement%20Form/pdf%20preview.dart';
import 'package:plateformcontrollerapp/Railway%20Recruitement%20Form/textformfield.dart';

class RailForm extends StatefulWidget {
  const RailForm({Key? key}) : super(key: key);

  @override
  State<RailForm> createState() => _RailFormState();
}

class _RailFormState extends State<RailForm> {
  ///Global Variable...
  var style = const TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  int intialIndex = 0;

  ///step 1 controllers...
  TextEditingController canNameController = TextEditingController();
  TextEditingController canFatherNameController = TextEditingController();
  TextEditingController canBirthDateController = TextEditingController();
  String groupValue = "Male";

  ///step 2 controllers...
  TextEditingController canMoNumberController = TextEditingController();
  TextEditingController canNearRailStaController = TextEditingController();
  TextEditingController canAddressController = TextEditingController();

  ///step 3 controllers...
  TextEditingController canNationalityController = TextEditingController();
  TextEditingController canReligionController = TextEditingController();
  List maritalStatus = ["Single", "Married"];
  String maritalSta = "Single";

  ///step 4 controllers...
  List qualification = [
    "SSC",
    "HSC",
    "ITI",
    "Diploma",
    "Act Aprentice",
    "Technical Graduation",
    "Non-Techanical Graduation"
  ];
  String qualificationStatus = "SSC";
  TextEditingController canEducationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Railway_Recruitment_Form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
                type: StepperType.vertical,
                currentStep: intialIndex,
                onStepTapped: (val) {
                  setState(() {
                    intialIndex = val;
                  });
                },
                onStepContinue: () {
                  if (intialIndex < 3) {
                    setState(() {
                      intialIndex++;
                    });
                  }
                },
                onStepCancel: () {
                  if (intialIndex > 0) {
                    setState(() {
                      intialIndex--;
                    });
                  }
                },
                controlsBuilder: (context, ControlsDetails) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        (intialIndex != 3)
                            ? ElevatedButton(
                                onPressed: ControlsDetails.onStepContinue,
                                child: const Text("Next"))
                            : const SizedBox(),
                        const SizedBox(
                          width: 30,
                        ),
                        (intialIndex != 0)
                            ? OutlinedButton(
                                onPressed: ControlsDetails.onStepCancel,
                                child: const Text("Back"))
                            : const SizedBox(),
                        const SizedBox(
                          width: 30,
                        ),
                        (intialIndex == 3)
                            ? OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            pdfSave("railway_form"),
                                      ));
                                },
                                child: const Text("Save"))
                            : const SizedBox()
                      ],
                    ),
                  );
                },
                steps: [
                  Step(
                      isActive: (intialIndex >= 0) ? true : false,
                      title: const Text("Personal Detail"),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "candidate name",
                            controller: canNameController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: false,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "father/hushband name",
                            controller: canFatherNameController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: false,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "birth date",
                            controller: canBirthDateController,
                            isNummaricKeyboad: true,
                            isTextInputActiondone: true,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "   Gender",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          RadioListTile(
                            value: "Male",
                            groupValue: groupValue,
                            onChanged: (val) {
                              setState(() {
                                groupValue = val.toString();
                              });
                            },
                            title: const Text("Male"),
                          ),
                          RadioListTile(
                            value: "Female",
                            groupValue: groupValue,
                            onChanged: (val) {
                              setState(() {
                                groupValue = val.toString();
                              });
                            },
                            title: const Text("Male"),
                          ),
                        ],
                      )),
                  Step(
                      isActive: (intialIndex >= 1) ? true : false,
                      title: const Text("Contact Details"),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "mobile number",
                            controller: canMoNumberController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: false,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "nearest railway station",
                            controller: canNearRailStaController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: false,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "address",
                            controller: canAddressController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: true,
                          ),
                        ],
                      )),
                  Step(
                      isActive: (intialIndex >= 2) ? true : false,
                      title: const Text("Other Details"),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "nationality",
                            controller: canNationalityController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: false,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                            labelText: "religion",
                            controller: canReligionController,
                            isNummaricKeyboad: false,
                            isTextInputActiondone: true,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Marital Status",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          DropdownButton(
                              value: maritalSta,
                              items: List.generate(
                                  maritalStatus.length,
                                  (index) => DropdownMenuItem(
                                      value: maritalStatus[index],
                                      child: Text(maritalStatus[index]))),
                              onChanged: (val) {
                                setState(() {
                                  maritalSta = val.toString();
                                });
                              })
                        ],
                      )),
                  Step(
                      isActive: (intialIndex >= 3) ? true : false,
                      title: const Text("Educational Qualification"),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          TextArea(
                              labelText: "educational qualification",
                              controller: canEducationController,
                              isNummaricKeyboad: false,
                              isTextInputActiondone: true)
                        ],
                      ))
                ])
          ],
        ),
      ),
    );
  }
}
