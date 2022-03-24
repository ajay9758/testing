// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('bg.jpg'), fit: BoxFit.fitWidth)),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    margin: EdgeInsets.all(9),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey),
                    child: ElevatedButton(
                      child: Icon(Icons.login),
                      onPressed: () => {},
                    )),
                Container(
                    margin: EdgeInsets.all(9),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey),
                    child: ElevatedButton(
                      child: Icon(Icons.signpost_outlined),
                      onPressed: () => {},
                    )),
                Container(
                    margin: EdgeInsets.all(9),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey),
                    child: ElevatedButton(
                      child: Icon(Icons.calculate),
                      onPressed: () => {},
                    )),
                Container(
                    margin: EdgeInsets.all(9),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey),
                    child: ElevatedButton(
                      child: Icon(Icons.rocket),
                      onPressed: () => {},
                    )),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 44),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blueGrey),
                    child: ElevatedButton(
                      child: Icon(Icons.holiday_village),
                      onPressed: () => {},
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
