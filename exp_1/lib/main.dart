import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Widgets")),
        body: Column(
          children: [
            Text("Hello Flutter!"),
            Image.network("https://picsum.photos/200"),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              child: Text(
                "Inside Container",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
