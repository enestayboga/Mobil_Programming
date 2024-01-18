import 'package:flutter/material.dart';

class ConstrainedBoxExampleDemo extends StatelessWidget {
  const ConstrainedBoxExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstainedBox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 100,
              //maxheight: 150,
              maxWidth: 100,
            ),
            child: Container(
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
