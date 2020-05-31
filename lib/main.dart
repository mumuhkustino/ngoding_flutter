import 'dart:ui';
import 'package:flutter/material.dart';
import 'user_method_post.dart';

import 'user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UserPostResult postResult = null;
  User user = null;
  String result = "Empty Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Music and Font"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text((postResult != null)
                ? postResult.id +
                    " | " +
                    postResult.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.createdAt
                : "Empty Data"),
            RaisedButton(
              onPressed: () {
                UserPostResult.connectToAPI("Stack", "Overflow").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text("POST"),
            ),
            Text((user != null) ? user.id + " | " + user.name : "Empty Data"),
            RaisedButton(
              onPressed: () {
                User.connectToAPI("3").then((value) {
                  user = value;
                  setState(() {});
                });
              },
              child: Text("GET"),
            ),
            Text(result),
            RaisedButton(
              onPressed: () {
                User.getUsers("1").then((value) {
                  result = "";
                  for (int i = 0; i < value.length; i++) {
                    result = result + "[ " + value[i].name + " ] ";
                  }
                  setState(() {});
                });
              },
              child: Text("GET LIST"),
            ),
          ],
        ),
      ),
    ));
  }
}
