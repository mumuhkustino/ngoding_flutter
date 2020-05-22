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
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Media Query"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainers(),
              )
            : Row(children: generateContainers()));
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.blueAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.greenAccent,
        width: 100,
        height: 100,
      ),
      Container(color: Colors.redAccent, width: 100, height: 100),
    ];
  }
}
