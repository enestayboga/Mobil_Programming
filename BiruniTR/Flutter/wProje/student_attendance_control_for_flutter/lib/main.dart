import 'package:flutter/material.dart';

import 'package:student_attendance_control_for_flutter/views/loginpage/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student_attendance",
      home: LoginPage(),
    );
  }
}
