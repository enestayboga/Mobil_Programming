import 'package:flutter/material.dart';

class ListViewExampleDemo extends StatelessWidget {
  const ListViewExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.amber,
      body: Container(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return getCard("$index Animal");
          },
        ),
      ),
    );
  }

  Card getCard(String title) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/image3.jpg"),
              radius: 30,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
            subtitle: Text("Dostlarımızı koruyalım"),
            trailing: Icon(Icons.summarize),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Text("sadsadsadasdasdasdasdsad"),
          ),
          ButtonBar(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Detay Gör"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("İletişim kur"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
