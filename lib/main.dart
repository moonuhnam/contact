import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications))],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          title: Text('냥냥')),
      body: Container(
        child: Text('지도'),
      ),
    ));
  }
}
