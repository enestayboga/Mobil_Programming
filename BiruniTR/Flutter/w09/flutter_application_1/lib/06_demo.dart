import 'package:flutter/material.dart';

class MatematikPageDemo extends StatefulWidget {
  const MatematikPageDemo({super.key});

  @override
  State<MatematikPageDemo> createState() => _MatematikPageDemoState();
}

class _MatematikPageDemoState extends State<MatematikPageDemo> {
  double sayi1 = 0;
  double sayi2 = 0;
  double sonuc = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child: TextField(
                onChanged: (value) {
                  value = (value == "") ? "0" : value;
                  sayi1 = double.parse(value);
                  print(sayi1);
                },
              ),
            ),
            SizedBox(
              width: 25,
            ),
            SizedBox(
              width: 50,
              child: TextField(
                onChanged: (value) {
                  value = (value == "") ? "0" : value;
                  sayi2 = double.parse(value);
                  print(sayi2);
                },
              ),
            ),
            SizedBox(
              width: 25,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    sonuc = sayi1 + sayi2;
                    print(sonuc);
                  });
                },
                child: Text("Hesapla"),
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text(sonuc.toString()),
          ],
        ),
      ),
    );
  }
}
