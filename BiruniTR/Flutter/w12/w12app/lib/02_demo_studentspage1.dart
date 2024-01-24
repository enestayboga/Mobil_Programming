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
  void initState() {
    super.initState();
    //repository.addStudent(StudentDemo(
      //  id: 2, firstName: "firstName", lastName: "lastName", departmentId: 1));
    _loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Students ")),
      body: ListView.builder(itemBuilder: (contex, index) {
        return ListTile(
          title: Text(studentsDemo[index].firstName +
              " " +
              studentsDemo[index].lastName),
          subtitle: Text(studentsDemo[index].departmentId.toString()),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        );
      }),
    );
  }
}
