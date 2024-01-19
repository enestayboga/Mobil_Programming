import 'package:flutter/material.dart';

class PopupMenuExampleDemo extends StatefulWidget {
  const PopupMenuExampleDemo({super.key});

  @override
  State<PopupMenuExampleDemo> createState() => _PopupMenuExampleDemoState();
}

class _PopupMenuExampleDemoState extends State<PopupMenuExampleDemo> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text("PopupMenuExample"),
        backgroundColor: colors[selectedItem],
        actions: [
          PopupMenuButton(onSelected: (_selectedItem) {
            setState(() {
              selectedItem = _selectedItem;
            });
          }, itemBuilder: (context) {
            return colors.keys.map((key) {
              return PopupMenuItem(value: key, child: Text(key));
            }).toList();
          }),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Kaydet",
                style: TextStyle(color: colors[selectedItem]),
              ))
        ],
      ),
      body: Container(
        color: colors[selectedItem],
      ),
    );
  }
}
