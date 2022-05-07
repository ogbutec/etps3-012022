import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterauth/Home/Principal.dart';

class EmailLoging extends StatefulWidget {
  EmailLoging({Key? key}) : super(key: key);

  @override
  State<EmailLoging> createState() => _EmailLogingState();
}

class _EmailLogingState extends State<EmailLoging> {
  final _correoController = TextEditingController();
  final _passController = TextEditingController();
  _IniciarSession() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _correoController.text, password: _passController.text);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Principal()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Pedidos de compra',
            style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 5),
        Text('Inicio',
            style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            controller: _passController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            controller: _correoController,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    _IniciarSession();
                  },
                  child: Text('Iniciar sesión'))),
        ),
      ]),
    ));
  }
}
