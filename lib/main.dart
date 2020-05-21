import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Text 1";

  double luas_segiempat(double panjang, double lebar) {
    double hasil;
    hasil = panjang + lebar;

    List<double> _list = [1.0, 2.0];
    List<String> list = [];
    Set<double> s;
    list = _list.map((e) => "angka " + e.toString()).toList();

    return hasil;
  }

  String say(String from, String message, {String to, String appName}) {
    return from +
        " say " +
        message +
        ((to != null) ? " to " + to : "") +
        ((appName != null) ? " via " + appName : "");
  }
  //say("Johny", "Hello", to: "Doloris", appName: "Whatsapp");
  //say("Johny", "Hello", appName: "Whatsapp");

  String say2(String from, String message, [String to, String appName]) {
    return from +
        " say " +
        message +
        ((to != null) ? " to " + to : "") +
        ((appName != null) ? " via " + appName : "");
  }
  //say2("Johny", "Hello", "Doloris", "Whatsapp");
  //say2("Johny", "Hello", "Doloris");

  double luas_segiempat2(double panjang, double lebar) => panjang * lebar;
  //f = luas_segiempat2;
  //f(1, 2);
  //luas_segiempat2(1, 2);

  int doMathOperator(int number1, int number2, Function(int, int) operator) {
    operator(number1, number2);
  }
  //doMathOperator(1, 2, (a, b) => a * b);

  int doMathOperator2(int number1, int number2, Function(int, int) operator) =>
      operator(number1, number2);
  //doMathOperator(1, 2, (a, b) => a * b);

  List<Widget> listWidget = [];
  int counter = 0;

  /* _MyAppState() {
    for (int i = 0; i < counter; i++) {
      listWidget.add(Text(
        "Data ke-" + i.toString(),
        style: TextStyle(fontSize: 36),
      ));
    }
  } */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Anonymous Method"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text("Add List"),
                onPressed: () {
                  setState(() {
                    counter++;
                    listWidget.add(Text("Data ke-" + counter.toString(),
                        style: TextStyle(fontSize: 36)));
                  });
                },
              ),
              RaisedButton(
                child: Text("Remove List"),
                onPressed: () {
                  setState(() {
                    counter--;
                    listWidget.removeLast();
                  });
                },
              )
            ],
          ),
          Column(children: listWidget)
        ],
      ),
    ));
  }
}
