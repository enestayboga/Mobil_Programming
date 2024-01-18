import 'package:flutter/material.dart';

class StackExampleDemo extends StatelessWidget {
  const StackExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackExample"),
      ),
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              width: 250,
              height: 350,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Positioned(
                left: 0, top: 150, child: Text("User Name: enestayboga")),
            Positioned(
                left: 0,
                top: 0,
                child: Text("Adress: enestayboga44@gmail.com")),
            Positioned(
              bottom: 5,
              right: 5,
              child: ElevatedButton(onPressed: () {}, child: Text("Visit")),
            ),
          ],
        ),
      ),
    );
  }
}
