// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'HomeDetail.dart';
import 'DrawerPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health'),
        centerTitle: true,
        // leading: Icon(Icons.tab),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(Icons.notification_important_rounded)),
          IconButton(
            icon: Icon(Icons.circle),
            onPressed: () => {},
          )
        ],
        elevation: 26,
      ),
      drawer: DrawerPage(),
      body: HomeDetail(),
    );
  }
}
