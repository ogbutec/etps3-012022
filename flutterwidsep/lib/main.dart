import 'package:flutter/material.dart';
import 'package:flutterwidsep/principal/usowid.dart';
import 'package:flutterwidsep/principal/principal.dart';

void main() {
  runApp(UsoWidgets());
}

class UsoWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClaseWidgets",
      home: UsoWid(),
      //home: Principal(),
    );
  }
}
