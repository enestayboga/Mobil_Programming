import 'package:flutter/material.dart';

//context kullanımı

class DropDownMenuExampleDemo extends StatefulWidget {
  const DropDownMenuExampleDemo({super.key});

  @override
  State<DropDownMenuExampleDemo> createState() =>
      _DropDownMenuExampleDemoState();
}

class _DropDownMenuExampleDemoState extends State<DropDownMenuExampleDemo> {
  Map<String, Color> colors = {
    "Kırmızı": Colors.red,
    "Sarı": Colors.yellow,
    "Mavi": Colors.blue,
    "Siyah": Colors.black,
    "Beyaz": Colors.white,
  };
  Color selectedColor = Colors.white;
  String selectedItem = "Beyaz";

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownMenuExample"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
          color: colors[selectedItem],
          child: Center(
            child: DropdownButton<String>(
              value: selectedItem,
              items: colors.keys.map<DropdownMenuItem<String>>((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (item) {
                setState(() {
                  selectedItem = item!;
                });
              },
            ),
          )),
    );
  }
}
