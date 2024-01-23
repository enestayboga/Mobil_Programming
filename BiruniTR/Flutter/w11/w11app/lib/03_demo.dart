import 'package:flutter/material.dart';

class OnGeneratedRouteMain extends StatelessWidget {
  const OnGeneratedRouteMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OnGeneratedRouteMain"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/OnGeneratedRoutePage1");
              },
              child: Text("Go to page1!"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/OnGeneratedRoutePage2");
              },
              child: Text("Go to page2!"),
            )
          ],
        ),
      ),
    );
  }
}

class OnGeneratedRoutePage1 extends StatelessWidget {
  const OnGeneratedRoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("OnGeneratedRoutePage1"),
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

class OnGeneratedRoutePage2 extends StatelessWidget {
  const OnGeneratedRoutePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("OnGeneratedRoutePage2"),
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
