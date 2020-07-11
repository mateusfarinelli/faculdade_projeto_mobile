import 'package:app_doacao/pages/about.dart';
import 'package:app_doacao/pages/details.dart';
import 'package:app_doacao/pages/home.dart';
import 'package:app_doacao/pages/login.dart';
import 'package:app_doacao/pages/newIncident.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/home": (context) => Home(),
        "/details": (context) => Details(),
        "/about": (context) => About(),
        "/newincident": (context) => NewIncident(),
      }));
}
