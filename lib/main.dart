import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar tabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.pink,
          border: Border(
            top: BorderSide(color: Colors.purple, width: 5),
          )),
      tabs: <Widget>[
        /* Tab(
                  icon: Icon(Icons.comment),
                  text: "Comments",
                ),
                Tab(
                  child: Image(image: AssetImage("assets/logo.png")),
                ), */
        Tab(
          icon: Icon(Icons.computer),
        ),
        Tab(
          text: "News",
        ),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                title: Text("Flutter 27 28"),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(tabBar.preferredSize.height),
                    child:
                        Container(color: Colors.amberAccent, child: tabBar))),
            body: TabBarView(children: <Widget>[
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
              /* Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ), */
            ]),
          )),
    );
  }
}
