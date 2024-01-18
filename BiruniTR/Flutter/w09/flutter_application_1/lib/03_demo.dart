import 'package:flutter/material.dart';

class FlexExampleDemo extends StatelessWidget {
  const FlexExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlexExample"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 75,
            child: Container(
              color: Colors.red,
              child: Row(
                children: [
                  Flexible(
                    flex: 80,
                    child: Container(
                      child:
                          Text("Flex inner1", style: TextStyle(fontSize: 25)),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
