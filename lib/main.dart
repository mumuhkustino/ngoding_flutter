import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Text 1";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            RaisedButton(
                child: Text("Button 1"),
                onPressed: () { //Anonymous Method
                  setState(() { //Merefresh tampilan ketika terjadi perubahan
                    message = "Button is pressed";
                  });
                })
          ],
        ),
      ),
    ));
  }
}
