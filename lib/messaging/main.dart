import 'package:flutter/material.dart';
import 'Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chat App",
      home: const HomePage(),
    );
  }
}
