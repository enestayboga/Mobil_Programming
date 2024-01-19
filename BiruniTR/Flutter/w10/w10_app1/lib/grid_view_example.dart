import 'package:flutter/material.dart';
import 'package:w10_app1/Student.dart';
import 'package:w10_app1/student.dart';

class GridViewExampleForStudent extends StatelessWidget {
  const GridViewExampleForStudent({super.key});

  @override
  Widget build(BuildContext context) {
    var data = getStudentList(100);

    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.amber,
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 5 / 2.3,
            ),
            itemCount: data.length,
            padding: EdgeInsets.all(2),
            itemBuilder: (context, index) {
              return getCard(data[index]);
            }),
      ),
    );
  }

  Card getCard(Student student) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: SizedBox(
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
      ),
    );
  }

  List<Student> getStudentList(int count) {
    var list = <Student>[];
    for (var i = 0; i < 150; i++) {
      list.add(Student(fullName: "$i. Student", phone: "$i. Phone"));
    }
    return list;
  }
}
