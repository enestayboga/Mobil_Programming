import 'package:flutter/material.dart';

class WrapExampleDemo extends StatelessWidget {
  const WrapExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WrapExample"),
        backgroundColor: Colors.blue,
      ),
      body: Wrap(
        spacing: 30,
        runSpacing: 50,
        alignment: WrapAlignment.center,
        children: [
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 65,
              backgroundColor: Colors.red,
              child: Text("A1"),
            ),
            label: Text("Ch1"),
          ),
        ],
      ),
    );
  }
}
