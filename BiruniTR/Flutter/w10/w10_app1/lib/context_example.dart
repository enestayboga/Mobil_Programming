import 'package:flutter/material.dart';

class ContextPageExample extends StatelessWidget {
  const ContextPageExample({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: Text("Context Usafe"),),
      body: Center(
        child: Text(
          "Test",
          style: TextStyle(fontSize: 36,color: Colors.blue),
        ),
      ),
    );
  }
}
