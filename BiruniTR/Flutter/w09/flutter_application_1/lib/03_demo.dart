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
                      color: Colors.brown,
                      child: Text(
                        "flex inner1",
                        style: TextStyle(fontSize: 25),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  Flexible(
                    flex: 20,
                    child: Container(
                      color: Colors.black,
                      child: Text(
                        "Flex inner2",
                        style: TextStyle(fontSize: 25),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
              alignment: Alignment.center,
            ),
          ),
          Flexible(
            flex: 15,
            child: Container(
              color: Colors.yellow,
              child: Text(
                "Flex 2",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.center,
            ),
          ),
          Flexible(
            flex: 10,
            child: Container(
              color: Colors.blue,
              child: Text(
                "Flex 3",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
