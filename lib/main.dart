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
          title: Text("Ink Well"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                  color: Colors.amberAccent,
                  child: Text("Raised Button"),
                  shape: StadiumBorder(),
                  onPressed: () {}),
              Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.pink],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                          child: Text(
                        "Ink Well Button",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
