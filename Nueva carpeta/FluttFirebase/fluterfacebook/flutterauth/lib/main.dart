import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Home/Login/EmaiLogin.dart';
import 'Home/Principal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FlutterAUTH());
}

class FlutterAUTH extends StatelessWidget {
  FlutterAUTH({Key? key}) : super(key: key);

  final _iniciar = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
        future: _iniciar,
        builder: (context, snapshot) {
          /*   if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }*/

          return MaterialApp(
            title: 'Flutter Auth',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: EmailLoging(),
          );
        });
  }
}
