// import 'package:flutter/material.dart';
// import 'call.dart';

// class Tiles extends StatefulWidget {
//   const Tiles({ Key? key }) : super(key: key);

//   @override
//   State<Tiles> createState() => _TilesState();
// }

// class _TilesState extends State<Tiles> {
//   ConstList list = ConstList();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: list.student.length,
//         itemBuilder: (BuildContext context, index) {
//         return ListTile(
//           title: Text('${list.listName(index)}'),
//           subtitle: Text('${list.listRollNo(index)}'),
//         );
//       }),
//       );
//   }
// }

import 'package:flutter/material.dart';
import 'call.dart';
import 'package:http/http.dart' as http;
//import 'package:dio/dio.dart';
import 'dart:convert' as convert;

class Tiles extends StatefulWidget {
  const Tiles({Key? key}) : super(key: key);

  @override
  State<Tiles> createState() => _TilesState();
}

class _TilesState extends State<Tiles> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // } //hot reload pr ye call nhi hoga

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  // getDioData() async {
  //   var dio = Dio();
  //   Response response = await dio.get("https://jsonplaceholder.typicode.com/photos");
  //   print(response.data); //responce is a list of json object    date[0]["title"]
  // }

  getHttpData() async {
    http.Response response =
        await http.get('https://jsonplaceholder.typicode.com/photos');
      // await means let me finish first; and because of this await we have to use async ***async prevents app crashing***
      //if we remove await then we can use future in left hand side... future is similar to promise keyword in javaScript

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      //var itemCount = jsonResponse['totalItems'];
      //print("Number of photos = $itemCount");
      print(jsonResponse[0]['title']);
    } else {
      print("response failed = ${response.statusCode}");
    }
  }

  ConstList list = ConstList();
  @override
  Widget build(BuildContext context) {
    //getDioData();
    getHttpData();
    return Scaffold(
      body: ListView.builder(
          itemCount: list.student.length,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text('${list.listName(index)}'),
              subtitle: Text('${list.listRollNo(index)}'),
            );
          }),
    );
  }
}
