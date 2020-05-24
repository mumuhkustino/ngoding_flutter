import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:simple_permissions/simple_permissions.dart';
// import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter 31 35"),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: ShaderMask(
                shaderCallback: (rectangle) {
                  return LinearGradient(
                          colors: [Colors.black, Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)
                      .createShader(Rect.fromLTRB(
                          0, 0, rectangle.width, rectangle.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image(width: 300, image: AssetImage("assets/logo.png")),
              ),
            ),
            Center(
              child: ClipPath(
                clipper: MyClipper(),
                child: Image(width: 300, image: AssetImage("assets/logo.png")),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.2, size.width, size.height);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
