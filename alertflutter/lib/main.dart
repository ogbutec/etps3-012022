import 'package:flutter/material.dart';
import 'Principal/Pantallas/principal.dart';

void main() {
  runApp(AlertApp());
}

class AlertApp extends StatelessWidget {
  const AlertApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Aplicacion FLutter", home: Principal());
  }
}
