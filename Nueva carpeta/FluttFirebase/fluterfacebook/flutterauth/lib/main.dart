import 'package:flutter/material.dart';

import 'Home/Login/EmaiLogin.dart';
import 'Home/Principal.dart';

void main() {
  runApp(FlutterAUTH());
}

class FlutterAUTH extends StatelessWidget {
  const FlutterAUTH({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EmailLoging(),
    );
  }
}
