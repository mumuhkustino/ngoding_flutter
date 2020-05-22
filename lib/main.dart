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
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(image: AssetImage("images/ic_payment.png"),
            fit: BoxFit.contain,
            // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}