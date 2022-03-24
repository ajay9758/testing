// ignore_for_file: prefer_const_constructors

import 'package:firstapp101/healthapp/about.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 150),
      child: ListView(
        addRepaintBoundaries: true,
        shrinkWrap: false,
        padding: EdgeInsets.only(right: 14),
        children: [
          Container(
            child: DrawerHeader(
              curve: Curves.easeInOutCubic,
              margin: EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage('health.jpg'), fit: BoxFit.fill),
                color: Colors.blue,
              ),
              child: null,
            ),
          ),
          ListTile(
            leading: Icon(Icons.switch_access_shortcut),
            title: const Text(
              'Change theme',
              style: TextStyle(color: Color.fromARGB(255, 0, 252, 96)),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text(
              'Settings',
              style: TextStyle(color: Color.fromARGB(255, 0, 252, 96)),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.abc_outlined),
            title: const Text(
              'About us',
              style: TextStyle(color: Color.fromARGB(255, 0, 252, 96)),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: const Text(
              'Contact us',
              style: TextStyle(color: Color.fromARGB(255, 0, 252, 96)),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/contact');
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback_sharp),
            title: const Text(
              'Feedback',
              style: TextStyle(color: Color.fromARGB(255, 0, 252, 96)),
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
