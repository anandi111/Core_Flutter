import 'package:flutter/material.dart';

import 'main.dart';
import 'resume_workshop.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => Home_Page(),
  "/resumeWorkspace": (context) => Resume_Workspace(),
};
