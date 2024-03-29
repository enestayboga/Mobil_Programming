import 'package:flutter/material.dart';

class AnaMenuDemo extends StatelessWidget {
  const AnaMenuDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            DrawerHeader(
                child: Text(
                  "Ana Menü",
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
                decoration: BoxDecoration(color: Colors.blueAccent)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Page1");
                },
                child: Text("Page1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Page1");
                },
                child: Text("Page2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Page1");
                },
                child: Text("Page3")),
          ],
        ),
      ),
    );
  }
}