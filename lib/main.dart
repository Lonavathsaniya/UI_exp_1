import 'package:flutter/material.dart';

void main() => runApp(Experiment3());

class Experiment3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          double width = MediaQuery.of(context).size.width;

          return Scaffold(
            appBar: AppBar(title: Text("Experiment 3: Responsive UI")),
            body: Center(
              child: width > 600
                  ? Text(
                      "Tablet View ($width px)",
                      style: TextStyle(fontSize: 28),
                    )
                  : Text(
                      "Mobile View ($width px)",
                      style: TextStyle(fontSize: 20),
                    ),
            ),
          );
        },
      ),
    );
  }
}
