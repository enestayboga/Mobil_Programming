import 'package:flutter/material.dart';

class StaticListViewExampleDemo extends StatelessWidget {
  const StaticListViewExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            getCard(
                "İsviçre, Jungfrau Dağı",
                "Dağın eteğinde müthiş bir gün doğumu",
                "Doğayı koruyalım, Dünyamızı gelecek nesillerimize miras bırakalım",
                "assets/images/image1.jpg"),
            getCard(
                "Mardin, Türk Kahvesi",
                "Kuru Kahveci Mehmed Efendi",
                "Mardin yöresinin vazgeçilmezi türk kahvesi",
                "assets/images/image2.jpg"),
            getCard(
                "Sivas, Kangal Yavrusu",
                "Siyah Sivas Kangalı Irkı",
                "Büyüyünce yaklaşık 12 Kg ağırlığa ulaşacak.",
                "assets/images/image3.jpg"),
            getCard(
                "İstanbul Yassıada, Özgürlük Fener,",
                "Demokrasi ve Özgürlükler Adası",
                "1969 yılında yassıada da savaş feneri olarak kullanıldı",
                "assets/images/image4.jpg"),
          ],
        ),
      ),
    );
  }

  Card getCard(String title, String subtitle, String text, String path) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(path),
              radius: 30,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
            subtitle: Text(subtitle),
            trailing: Icon(Icons.summarize),
          ),
          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            child: Text(text),
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
