import 'package:flutter/material.dart';
import 'package:w10_app1/assets_example..dart';
import 'package:w10_app1/context_example.dart';
import 'package:w10_app1/popup_menu_example.dart';
import 'package:w10_app1/card_example.dart';
import 'package:w10_app1/list_view_example_student.dart';
import 'package:w10_app1/static_list_view_example.dart';
import 'package:w10_app1/grid_view_example.dart';
import 'package:w10_app1/dropdown_menu_example.dart';





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
      home: PopupMenuExample(),
    );
  }
}
