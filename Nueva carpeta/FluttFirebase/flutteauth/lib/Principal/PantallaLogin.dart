import 'package:flutter/material.dart';

class PantallaLogin extends StatefulWidget {
  PantallaLogin({Key? key}) : super(key: key);

  @override
  State<PantallaLogin> createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Login',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text("Login al aplicativo",
                style: TextStyle(color: Colors.white, fontSize: 35)),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'User Email',
              ),
            ),
          ],
        ));
  }
}
