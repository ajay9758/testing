// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int left = 1;
  int right = 1;

  void _roll() {
    ctrl.forward();
  }

  late AnimationController ctrl;
  late CurvedAnimation animation;

  @override
  void initState() {
    super.initState();
    animate();
  }

  animate() {
    ctrl = AnimationController(duration: Duration(seconds: 1), vsync: this);
//    ctrl.forward();
    animation = CurvedAnimation(parent: ctrl, curve: Curves.bounceOut);
    animation.addListener(() {
      setState(() {});
      // print(ctrl.value);
    });

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          left = Random().nextInt(6) + 1;
          right = Random().nextInt(6) + 1;
        });
        //print("Completed");
        ctrl.reverse();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    ctrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DICE GAME FOR YOU"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onDoubleTap: _roll,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image(
                        height: 200 - (animation.value) * 200,
                        image: AssetImage("images/dice-png-$left.png")),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GestureDetector(
                  onDoubleTap: () {
                    _roll();
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image(
                        height: 200 - (animation.value) * 200,
                        image: AssetImage("images/dice-png-$right.png")),
                  ),
                ),
              ),
            ],
          ),
          RaisedButton(
            child: Text("ROLL"),
            color: Colors.blue,
            hoverColor: Colors.yellow,
            padding: EdgeInsets.all(3),
            onPressed: _roll,
          )
        ]),
      ),
    );
  }
}
