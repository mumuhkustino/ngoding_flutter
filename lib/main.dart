import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer Widget"),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Spacer(flex: 1,),
              Container(width: 80, height: 80, color: Colors.redAccent,),
              Spacer(flex: 2,),
              Container(width: 80, height: 80, color: Colors.greenAccent,),
              Spacer(flex: 2,),
              Container(width: 80, height: 80, color: Colors.blueAccent,),
              Spacer(flex: 1,),
            ],
          ),
        ),
      ),
    );
  }
}