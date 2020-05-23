import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "Flutter 25 26 30",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Flutter 25 26 30",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Hero(
              tag: "pp",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
                  ColorfulButton(Colors.amber, Colors.blue, Icons.people),
                  ColorfulButton(Colors.green, Colors.amber, Icons.computer),
                  ColorfulButton(
                      Colors.blue, Colors.pink, Icons.perm_contact_calendar),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorfulButton extends StatefulWidget {
  Color mainColor, secondColor;
  IconData iconData;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData);

  ColorfulButton(this.mainColor, this.secondColor, this.iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;
  Color mainColor, secondColor;
  IconData iconData;

  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(25),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: (isPressed) ? secondColor : mainColor,
                      child: Transform.rotate(
                        angle: -pi / 4,
                        child: Icon(
                          iconData,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, 30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, 30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-30, -30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(30, -30),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
