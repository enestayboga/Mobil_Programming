import 'package:flutter/material.dart';
import 'package:w10_app1/01_demo.dart';
import 'package:w10_app1/02_demo.dart';
import 'package:w10_app1/03_demo.dart';
import 'package:w10_app1/04_demo.dart';
import 'package:w10_app1/05_demo.dart';
import 'package:w10_app1/06_demo.dart';
import 'package:w10_app1/07_demo.dart';
import 'package:w10_app1/08_demo.dart';
import 'package:w10_app1/09_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: GridViewExampleForStudentDemo(),
    );
  }
}
