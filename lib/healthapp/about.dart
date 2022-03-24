// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        
        children: [
          Container(
            color: Colors.lightGreenAccent,
            child: Text(
              "This app is built by Ajay negi",
              style: TextStyle(
                backgroundColor: Colors.cyanAccent,
                fontSize: 10,
              ),
            ),
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text(
              "Another details about application",
              style: TextStyle(
                backgroundColor: Colors.cyanAccent,
                fontSize: 10,
              ),
            ),
            margin: EdgeInsets.all(20),
          ),
          
          RaisedButton(

            child: Text("Home"),
            padding: EdgeInsets.only(top: 10),
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))
            },
            elevation: 30,
            hoverColor: Colors.pink,
          )
        ],
      ),
    );
  }
}
