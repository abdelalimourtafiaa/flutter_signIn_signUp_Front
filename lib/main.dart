import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:pfe_project/Splash.dart';
import 'package:pfe_project/colors.dart';
import 'package:pfe_project/regestre.dart';
import 'package:pfe_project/utils.dart';
import 'package:pfe_project/login.dart';
// import 'package:myapp/page-1/android-large-2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: regestre(),
    );
  }
}
