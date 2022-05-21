import 'package:flutter/material.dart';

import 'app/ui/paginas/home/principal.dart';

void main() {
  runApp(flutterAppsMap());
}

class flutterAppsMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalPage(),
    );
  }
}
