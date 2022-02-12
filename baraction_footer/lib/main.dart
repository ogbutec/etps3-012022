import 'package:flutter/material.dart';
import 'package:baraction_footer/paginas/principal.dart';

void main() {
  runApp(Reproductor());
}

class Reproductor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Principal(),
    );
  }
}
