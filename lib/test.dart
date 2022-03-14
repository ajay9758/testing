import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} //testing my code

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("welcome"),
          ),
        ),
      ),
    );
  }
}
