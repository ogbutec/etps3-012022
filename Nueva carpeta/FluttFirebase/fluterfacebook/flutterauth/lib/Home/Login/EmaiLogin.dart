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
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _correoController.text,
          password: _passController.text);

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Principal()));
    } on FirebaseAuthException catch (e) {
      var mensaje = "";
      switch (e.code) {
        case "auth/invalid-email":
          mensaje = "El correo no es valido";
          break;
        case "auth/user-disabled":
          mensaje = "El usuario esta deshabilitado";
          break;
        case "auth/user-not-found":
          mensaje = "El usuario no existe";
          break;
        case "auth/wrong-password":
          mensaje = "La contraseña es incorrecta";
          break;
        default:
          mensaje = "Error desconocido";
          print(_passController.toString().trim());
          print(_correoController.toString().trim());
          break;
      }
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
                title: Text("Error"),
                content: Text(mensaje),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  )
                ]);
          });
    }
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
