import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//Non-conteiner widget

class demo_01 extends StatelessWidget {
  const demo_01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("non-container widgets"),
          backgroundColor: Colors.blue,
          ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Merhaba Dünya!", style: TextStyle(fontSize: 18)),
            Text("Merhaba", style: TextStyle(fontSize: 18,color: Colors.red)),
            Image.network(
              height: 50,
              width: 50,
              scale: .5, "https://www.biruni.edu.tr/images/logo.svg"
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: Text("Tiklayiniz")
                ),
                SizedBox(height: 50,),
                Switch(value: true, onChanged: ((value) {})),
                Checkbox(value: false, onChanged: (value){}),
                Radio(value: true, groupValue: 1, onChanged: (value){}),
                Slider(value: .5, onChanged: (value){}),
                TextField(),
                Divider(),   


            ],
        ),
      ),
    );
  }
}