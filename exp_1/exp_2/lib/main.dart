import 'package:flutter/material.dart';

void main() => runApp(ResponsiveApp());

class ResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Center(child: Text("Mobile Layout"));
            } else {
              return Center(child: Text("Tablet/Desktop Layout"));
            }
          },
        ),
      ),
    );
  }
}
