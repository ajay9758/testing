// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(Ajay());

class Ajay extends StatelessWidget {
  const Ajay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("AJAY"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50.1,
                  backgroundImage: AssetImage("assets/ajay.jpg"),
                ),
                Text("data"),
                Text("data"),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 11, horizontal: 22),
                  child: ListTile(
                    leading: Icon(
                      Icons.workspaces,
                      color: Colors.lightBlue,
                    ),
                    title: Text("First option"),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 11, horizontal: 22),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_tree_rounded,
                      color: Colors.lightBlue,
                    ),
                    title: Text(
                      "Second option",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.abc,
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
