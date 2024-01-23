import 'package:flutter/material.dart';
import 'package:w10_app1/Student.dart';
import 'package:w10_app1/student.dart';
import 'package:w10_app1/08_demo_student.dart';
import 'package:w10_app1/08_demo_student.dart';

class ListViewExampleForStudent extends StatelessWidget {
  const ListViewExampleForStudent({super.key});

  @override
  Widget build(BuildContext context) {
    var data = getStudentDemoList(100);

    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.amber,
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return getCard(data[index]);
          },
        ),
      ),
    );
  }

  Card getCard(StudentDemo student) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image3.jpg"),
              radius: 30,
            ),
            title: Text(
              student.fullName,
              style: TextStyle(fontSize: 12),
            ),
            subtitle: Text(student.phone),
            trailing: Icon(Icons.summarize),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text("sadsadsadasdasdasdasdsad"),
          ),
          ButtonBar(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Detay Gör"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("İletişim kur"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<StudentDemo> getStudentDemoList(int count) {
    var list = <StudentDemo>[];
    for (var i = 0; i < 150; i++) {
      list.add(StudentDemo(fullName: "$i. Student", phone: "$i. Phone"));
    }
    return list;
  }
}
