import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
// import 'package:qrscan/qrscan.dart' as scanner;
// import 'package:simple_permissions/simple_permissions.dart';
// import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String data = "QR Code Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: QrImage(
                version: 6,
                backgroundColor: Colors.limeAccent,
                foregroundColor: Colors.black,
                errorCorrectionLevel: QrErrorCorrectLevel.M,
                padding: EdgeInsets.all(30),
                size: 300,
                data: "Test Baca QR Code",
              ),
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            RaisedButton(
                child: Text("Scan QR Code"),
                onPressed: () {
                  // scanQR();
                })
          ],
        ),
      ),
    );
  }

  /* void scanQR() async {
    bool result = await SimplePermissions.checkPermission(Permission.Camera);
    PermissionStatus status = PermissionStatus.notDetermined;
    if (!result) {
      status = await SimplePermissions.requestPermission(Permission.Camera);
    }

    if (result || status == PermissionStatus.authorized) {
      String scanResult = await scanner.scan();
      setState(() {
        data = scanResult;
      });
    }
  } */

  // void scanQR() async {
  //   final  PermissionHandler _permissionHandler = PermissionHandler();
  //   var result =
  //       await _permissionHandler.requestPermissions([PermissionGroup.camera]);
  //   if (result[PermissionGroup.camera] == PermissionStatus.granted) {
  //     String scanResult = await scan();
  //     setState(() {
  //       data = scanResult;
  //     });
  //   }
  // }
}
