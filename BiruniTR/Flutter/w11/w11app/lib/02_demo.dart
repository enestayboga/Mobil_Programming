import 'package:flutter/material.dart';

class NamedRouteMainDemo extends StatelessWidget {
  const NamedRouteMainDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NamedRouteMain"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/NamedRoutePage1");
              },
              child: Text("Go to page1!"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/NamedRoutePage2");
              },
              child: Text("Go to page2!"),
            )
          ],
        ),
      ),
    );
  }
}

class NamedRoutePage1 extends StatelessWidget {
  const NamedRoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("NamedRoutePage1"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go to page!"),
          ),
        ));
  }
}

class NamedRoutePage2 extends StatelessWidget {
  const NamedRoutePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("NamedRoutePage2"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go to page!"),
          ),
        ));
  }
}
