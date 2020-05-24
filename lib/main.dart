import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:simple_permissions/simple_permissions.dart';
// import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer audioPlayer;
  String duration = "00:00:00";
  String url;

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((_duration) {
      setState(() {
        duration = _duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void playSeekSound(String url, int second) async {
    await audioPlayer.seek(Duration(seconds: second));
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

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
            RaisedButton(
              onPressed: () {
                playSound(url);
              },
              child: Text("Play"),
            ),
            RaisedButton(
              onPressed: () {
                pauseSound();
              },
              child: Text("Pause"),
            ),
            RaisedButton(
              onPressed: () {
                stopSound();
              },
              child: Text("Stop"),
            ),
            RaisedButton(
              onPressed: () {
                resumeSound();
              },
              child: Text("Resume"),
            ),
            Text(
              duration,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFeatures: [FontFeature.enable("smcp")]),
            )
          ],
        ),
      ),
    ));
  }
}
