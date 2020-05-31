import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  TextEditingController controller = TextEditingController(text: "No Name");

  void saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("name", controller.text);
    preferences.setBool("isON", isON);
  }

  Future<String> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("name") ?? "";
  }

  Future<bool> getState() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool("isON") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Switch and Animated"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              controller: controller,
            ),
            Switch(
              value: isON,
              onChanged: (newValue) {
                setState(() {
                  isON = newValue;
                });
              },
            ),
            RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  saveData();
                }),
            RaisedButton(
                child: Text("Load"),
                onPressed: () {
                  getName().then((value) {
                    controller.text = value;
                    setState(() {});
                  });
                  getState().then((value) {
                    isON = value;
                    setState(() {});
                  });
                }),
          ],
        ),
      ),
    ));
  }
}
