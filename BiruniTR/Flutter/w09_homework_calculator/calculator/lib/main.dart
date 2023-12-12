import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Hesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num? sayi1, sayi2, sonuc;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);

      sonuc = (sayi1! + sayi2!)!;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);

      sonuc = (sayi1! - sayi2!)!;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);

      sonuc = (sayi1! * sayi2!)!;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);

      sonuc = (sayi1! / sayi2!)!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(70.0),
      padding: EdgeInsets.all(70.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: t2,
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
                onPressed: sayiTopla,
                child: Text(
                  "Topla",
                )),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
                onPressed: sayiCikar,
                child: Text(
                  "Çıkar",
                )),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
                onPressed: sayiCarp,
                child: Text(
                  "Çarp",
                )),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
                onPressed: sayiBol,
                child: Text(
                  "Böl",
                )),
          ],
        ),
      ),
    );
  }
}
