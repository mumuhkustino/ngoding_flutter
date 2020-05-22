import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlueAccent,
                  filled: true,
                  icon: Icon(Icons.adb),
                  suffix: Container(width: 5, height: 5, color: Colors.blueGrey,),
                  // prefix: Container(width: 5, height: 5, color: Colors.blueAccent,),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name: ",
                  prefixStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w600),
                  labelText: "Name Lengkap",
                  labelStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w600),
                  hintText: "Name lengkap",
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
                // maxLines: 1,
                // maxLength: 12,
                // obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
