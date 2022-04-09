import 'package:flutter/material.dart';

import 'Principal/Home.dart';
import 'Principal/PantallaLogin.dart';

void main() {
  runApp(const FlutterAuth());
}

class FlutterAuth extends StatelessWidget {
  const FlutterAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
