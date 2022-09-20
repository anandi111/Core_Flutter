import 'dart:developer';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resume_builder/resume1.dart';
import 'logic.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 100,
                width: 50,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [conGradOne, conGradTwo]),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Resume Builder",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: colorIndigoAccent,
                      width: 1,
                    )),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: FileImage(File(image!.path)),
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              ///Education part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Education",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> Course = ${courseCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> ${schoolNameCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> CGP = ${schoolMarkCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Year of Pass = ${yearPassCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),

                              ///Personal Detail part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Personal Details",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> DOB = ${DOBCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Marital Status = ${maritalStatus}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Language Known = English, Hindi",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Nationality = ${nationalityCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),

                              ///Achievement Detail part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Achievement",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            color: Colors.white,
                            height: 500,
                            width: 1,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Anandi Chovatiya",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: colorIndigoAccent),
                              ),
                              Text(
                                "Flutter Developer",
                                style: TextStyle(
                                    fontSize: 10, color: colorIndigoAccent),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              ///Work Experiance part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Work Experiance",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> Company Name = ${comNameCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Roles = ${expSchoolCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Employee Status = ${empStatus}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Date Joined = ${expDateCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              ///Skills Experiance part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Skills",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> C",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> C++",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Dart",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Flutter",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              ///Carrier Obj part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Carrier Objectives",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> ${careerObjCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Current Designation = ${currentDesiCantroller.text}",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              ///Area of Interest part...
                              Container(
                                height: 20,
                                width: 200,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [conGradOne, conGradTwo])),
                                child: Center(
                                    child: Text(
                                  "Area of Interest",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 80,
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "=> Reading",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "=> Photography",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              final output = await getExternalStorageDirectory();

              var pdf = pw.Document();
              pdf.addPage(pw.Page(
                  pageFormat: PdfPageFormat.a4,
                  build: (pw.Context context) {
                    return pw.Row(
                      children: [
                        pw.Expanded(
                          child: pw.Padding(
                            padding: pw.EdgeInsets.all(10),
                            child: pw.Container(
                              decoration: pw.BoxDecoration(
                                  border: pw.Border.all(
                                // color: pw,
                                width: 1,
                              )),
                              child: pw.Row(
                                children: [
                                  pw.Expanded(
                                    child: pw.Column(
                                      children: [
                                        pw.Container(
                                          height: 80,
                                          width: 80,
                                          decoration: pw.BoxDecoration(
                                            shape: pw.BoxShape.circle,
                                            /*image: pw.DecorationImage(
                                              fit: pw.BoxFit.fill,
                                              // image: pw.FileImage(File(image!.path)),
                                            )*/
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 20,
                                        ),

                                        ///Education part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /* gradient: pw.LinearGradient(
                                                colors: pw.[conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Education",
                                            // style: TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "=> Course = ${courseCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> ${schoolNameCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> CGP = ${schoolMarkCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Year of Pass = ${yearPassCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),

                                        ///Personal Detail part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /* gradient: pw.LinearGradient(
                                                colors: [conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Personal Details",
                                            // style: pw.TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "=> DOB = ${DOBCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Marital Status = ${maritalStatus}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Language Known = English, Hindi",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Nationality = ${nationalityCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),

                                        ///Achievement Detail part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /*gradient: pw.LinearGradient(
                                                colors: [conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Achievement",
                                            // style: pw.TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  pw.Padding(
                                    padding: const pw.EdgeInsets.all(10),
                                    child: pw.Container(
                                      // color: Colors.white,
                                      height: 500,
                                      width: 1,
                                    ),
                                  ),
                                  pw.Expanded(
                                    child: pw.Column(
                                      children: [
                                        pw.SizedBox(
                                          height: 20,
                                        ),
                                        pw.Text(
                                          "Anandi Chovatiya",
                                          style: pw.TextStyle(
                                            fontSize: 20,
                                            fontWeight: pw.FontWeight.bold,
                                            /*color: pw.colorIndigoAccent*/
                                          ),
                                        ),
                                        pw.Text(
                                          "Flutter Developer",
                                          style: pw.TextStyle(
                                            fontSize:
                                                10, /*color: colorIndigoAccent*/
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 20,
                                        ),

                                        ///Work Experiance part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /*  gradient: pw.LinearGradient(
                                                colors: [conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Work Experiance",
                                            // style: pw.TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "=> Company Name = ${comNameCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Roles = ${expSchoolCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Employee Status = ${empStatus}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Date Joined = ${expDateCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),

                                        ///Skills Experiance part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /* gradient: pw.LinearGradient(
                                                colors: [conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Skills",
                                            // style: pw.TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "=> C",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> C++",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Dart",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Flutter",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),

                                        ///Carrier Obj part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /* gradient: pw.LinearGradient(
                                                colors: [conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Carrier Objectives",
                                            // style: pw.TextStyle(color: Colors.white),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "=> ${careerObjCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Current Designation = ${currentDesiCantroller.text}",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),

                                        ///Area of Interest part...
                                        pw.Container(
                                          height: 20,
                                          width: 200,
                                          decoration: pw.BoxDecoration(
                                              /* gradient: pw.LinearGradient(
                                                colors: [conGradOne, conGradTwo])*/
                                              ),
                                          child: pw.Center(
                                              child: pw.Text(
                                            "Area of Interest",
                                            style: pw.TextStyle(
                                                color: PdfColor.fromHex(
                                                    "0xffFFC0CB")),
                                          )),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                        pw.Container(
                                          height: 80,
                                          width: 200,
                                          child: pw.Column(
                                            crossAxisAlignment:
                                                pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.Text(
                                                "=> Reading",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                              pw.Text(
                                                "=> Photography",
                                                style:
                                                    pw.TextStyle(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                        pw.SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }));

              final file = File("${output!.path}/example.pdf");
              var data = await file.writeAsBytes(await pdf.save());

              log(output.path, name: "hello");
            },
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [conGradOne, conGradTwo])),
              child: Center(
                  child: Text(
                "Download",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditResume()));
            },
            child: Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [conGradOne, conGradTwo])),
              child: Center(
                  child: Text(
                "Edit",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
