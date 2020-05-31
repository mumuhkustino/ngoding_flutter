import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isON = false;
  bool isClick = false;
  double flexPadding = 5;

  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

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
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
              transitionBuilder: (child, animation) => RotationTransition(
                turns: animation,
                child: child,
              ),
            ),
            Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON)
                      myWidget = Container(
                        key: ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
                    /* myWidget = SizedBox(
                        width: 200,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Switch: ON",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      ); */
                    else
                      myWidget = Container(
                        key: ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
                  });
                }),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(flexPadding),
                          child: GestureDetector(
                            onTap: () {
                              isClick = !isClick;
                              setState(() {
                                if (isClick)
                                  flexPadding = 20;
                                else
                                  flexPadding = 5;
                              });
                            },
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(flexPadding),
                          child: GestureDetector(
                            onTap: () {
                              isClick = !isClick;
                              setState(() {
                                if (isClick)
                                  flexPadding = 30;
                                else
                                  flexPadding = 5;
                              });
                            },
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        )),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(flexPadding),
                          child: GestureDetector(
                            onTap: () {
                              isClick = !isClick;
                              setState(() {
                                if (isClick)
                                  flexPadding = 50;
                                else
                                  flexPadding = 5;
                              });
                            },
                            child: Container(
                              color: Colors.blue,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(flexPadding),
                          child: GestureDetector(
                            onTap: () {
                              isClick = !isClick;
                              setState(() {
                                if (isClick)
                                  flexPadding = 10;
                                else
                                  flexPadding = 5;
                              });
                            },
                            child: Container(
                              color: Colors.yellow,
                            ),
                          ),
                        )),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
