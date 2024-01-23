import 'package:flutter/material.dart';
import 'package:w11app/04_demo_anamenu.dart';

class SideBarMenuPageMainDemo extends StatelessWidget {
  const SideBarMenuPageMainDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenuDemo(),
      appBar: AppBar(
        title: Text("SideBarMenuPageMain"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

class PageDemo1 extends StatelessWidget {
  const PageDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenuDemo(),
      appBar: AppBar(
        title: Text("SideBarMenuPage1"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class PageDemo2 extends StatelessWidget {
  const PageDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenuDemo(),
      appBar: AppBar(
        title: Text("SideBarMenuPage2"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class PageDemo3 extends StatelessWidget {
  const PageDemo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AnaMenuDemo(),
      appBar: AppBar(
        title: Text("SideBarMenuPage3"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
