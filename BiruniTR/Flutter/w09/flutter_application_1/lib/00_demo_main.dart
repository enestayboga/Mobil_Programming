import 'package:flutter/material.dart';
import 'package:flutter_application_1/01_demo.dart';
import 'package:flutter_application_1/02_demo.dart';
import 'package:flutter_application_1/03_demo.dart';
import 'package:flutter_application_1/04_demo.dart';
import 'package:flutter_application_1/05_demo.dart';
import 'package:flutter_application_1/06_demo.dart';
import 'package:flutter_application_1/07_demo.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 9',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ConstrainedBoxExampleDemo(),
    );
  }
}

