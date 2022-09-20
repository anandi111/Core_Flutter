import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

///color variables..
Color conGradOne = Colors.indigo;
Color conGradTwo = Color(0xff6dd5ed);
Color colorIndigoAccent = Color(0xff4c72c3);

///textEditingControllers...
///1. Contact Page Controllers..
TextEditingController nameCantroller = TextEditingController();
TextEditingController emailCantroller = TextEditingController();
TextEditingController phoneCantroller = TextEditingController();
TextEditingController addressCantroller = TextEditingController();

///1. Contact Page Focusnodes..
FocusNode nameFocusNode = FocusNode();
FocusNode emailFocusNode = FocusNode();
FocusNode phoneFocusNode = FocusNode();
FocusNode addressFocusNode = FocusNode();

///Currier Objective Page Controllers...
TextEditingController careerObjCantroller = TextEditingController();
TextEditingController currentDesiCantroller = TextEditingController();

///Education Page Controllers...
TextEditingController courseCantroller = TextEditingController();
TextEditingController schoolNameCantroller = TextEditingController();
TextEditingController schoolMarkCantroller = TextEditingController();
TextEditingController yearPassCantroller = TextEditingController();

///References Page Controllers...
TextEditingController refNameCantroller = TextEditingController();
TextEditingController refDesignationCantroller = TextEditingController();
TextEditingController refOrganizationCantroller = TextEditingController();

///Experience Page Controllers...
TextEditingController comNameCantroller = TextEditingController();
TextEditingController expSchoolCantroller = TextEditingController();
TextEditingController roleCantroller = TextEditingController();
TextEditingController expDateCantroller = TextEditingController();
dynamic empStatus = "Previously Employed";

///Project Page Controllers...
TextEditingController proNameCantroller = TextEditingController();
TextEditingController proRoleCantroller = TextEditingController();
TextEditingController proTechCantroller = TextEditingController();
TextEditingController proDescriptionCantroller = TextEditingController();
dynamic ctech = true;
dynamic cpptech = false;
dynamic fluttertech = false;

///Personal Detail Page Controllers...
TextEditingController DOBCantroller = TextEditingController();
TextEditingController nationalityCantroller = TextEditingController();
dynamic maritalStatus = "single";
dynamic engLang = true;
dynamic hindiLang = true;
dynamic gujLang = true;

///Techanical Skills Page Controllers...
// List<TextEditingController> skillController = new List();

///Declaration Page Controllers...
dynamic declaration = false;
TextEditingController descriptionCantroller = TextEditingController();
TextEditingController desDateCantroller = TextEditingController();
TextEditingController desPlaceCantroller = TextEditingController();

///Photo page ..
XFile? image;

class hello {
  Color colorindigio = Colors.indigoAccent;
}

var helloObj = hello();
