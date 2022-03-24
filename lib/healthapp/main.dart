// ignore_for_file: prefer_const_constructors


import 'package:firstapp101/healthapp/splash.dart';
import 'package:flutter/material.dart';
import 'contact.dart';
import 'splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'healthify',
      debugShowCheckedModeBanner: false,

      home: Splash(),
      routes: {
        '/contact':(_)=>Contact("negi.ajay354@gmail.com")
      },

    );
  }
}
