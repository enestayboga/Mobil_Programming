import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.amber,
      body: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image1.jpg")),
              title: Text(
                "Manzara, İsviçre",
                style: TextStyle(fontSize: 12),
              ),
              subtitle: Text("Doğayı koruyalım"),
              trailing: Icon(Icons.summarize),
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text("İsviçre manzarasıyla harika bir gün doğumu"),
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
      ),
    );
  }
}
