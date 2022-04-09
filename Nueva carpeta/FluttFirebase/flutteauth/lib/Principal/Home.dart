import 'package:firebase_core/firebase_core.dart';
import 'package:flutteauth/Principal/PantallaLogin.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp app = await Firebase.initializeApp();
    return app;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //PantallaLogin(),
          FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return PantallaLogin();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
