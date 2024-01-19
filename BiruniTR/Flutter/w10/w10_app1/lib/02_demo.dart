import 'package:flutter/material.dart';

class AssetsExampleDemo extends StatelessWidget {
  const AssetsExampleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/image1.jpg',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/image2.jpg',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/image3.jpg',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/image4.jpg',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
