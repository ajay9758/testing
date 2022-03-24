// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Chatscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frenzy"),
      ),
      body: ChatScreen(),
    );
  }
}
