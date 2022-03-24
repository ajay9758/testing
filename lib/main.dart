import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      theme:
          ThemeData(primarySwatch: Colors.green, brightness: Brightness.dark),
      home: const Homepage(),
    );
  }
}

//flutter run -d chrome --web-renderer html
//flutter run -t lib/main1.dart -d chrome --web-renderer html
//flutter run -t lib/main.dart -d chrome --web-renderer html
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //***************************************************************************************/
  String mytext = "hello world";
  void _changeText() {
    setState(() {
      if (mytext.startsWith("h")) {
        mytext = "Welcome to my app....";
      } else {
        mytext = "hello world";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          //special property of row and column are cross and row axis..........
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(mytext),
          ElevatedButton(
            child: const Text("CLICK",
                style: TextStyle(
                    color: Color.fromARGB(255, 238, 3, 15), fontSize: 20)),
            onPressed: _changeText,
          )
        ],
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        centerTitle: true,
      ),

      body: _bodyWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.adb_outlined),
        onPressed: _changeText,
      ), //const Center(child: Text("hello")),
    );
  }
}
