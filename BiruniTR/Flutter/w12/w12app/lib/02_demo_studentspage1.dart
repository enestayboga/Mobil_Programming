import 'package:flutter/material.dart';
import 'package:w12app/02_demo_schoolrepository.dart';
import 'package:w12app/02_demo_student.dart';

class StudentsPage1Demo extends StatefulWidget {
  const StudentsPage1Demo({super.key});

  @override
  State<StudentsPage1Demo> createState() => _StudentsPage1DemoState();
}

class _StudentsPage1DemoState extends State<StudentsPage1Demo> {
  var repository = SchoolRepositoryDemo1();
  List<StudentDemo> studentsDemo = [];

  var firstNameController = TextEditingController();
  var lasttNameController = TextEditingController();
  var departmentIdController = TextEditingController();

  _loadStudents() async {
    studentsDemo = await repository.getStudents();
    setState(() {});
  }

  @override
  

  Widget build(BuildContext context) {
    return Container();
  }
}
