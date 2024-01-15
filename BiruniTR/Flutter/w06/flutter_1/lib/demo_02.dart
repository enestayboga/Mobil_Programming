import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//conteiner widget

class demo_02 extends StatelessWidget {
  const demo_02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
            ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 40, top:75),
          child: Text("Merhaba",style: TextStyle(fontSize: 30, color: Colors.red)),

        ),
      ),
    );
  }
}
