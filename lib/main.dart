import 'package:farz/src/screens/dashboard.dart';
import 'package:farz/src/screens/forgot_password.dart';
import 'package:farz/src/screens/homepage.dart';
import 'package:farz/src/screens/login.dart';
import 'package:farz/src/screens/quiz_past.dart';
import 'package:farz/src/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farz Academy',
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
