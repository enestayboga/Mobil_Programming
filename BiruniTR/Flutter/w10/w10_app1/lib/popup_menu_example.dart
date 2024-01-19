import 'package:flutter/material.dart';

class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
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
