import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterwidsep/paginas/pagina.dart';

Widget nombre() {
  return Text(
    "Iniciar",
    style: TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
  );
}

Widget camposUsuario() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Usuario", fillColor: Colors.white, filled: true),
      ));
}

Widget camposPass() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password", fillColor: Colors.white, filled: true),
      ));
}

Widget botonAceptar() {
  return ElevatedButton(
    onPressed: () => {
      Navigator.pop(context, MaterialPageRoute(builder: (context) => Pagina()))
    },
    child: Text("Ingresar"),
  );
}

Widget botonCancelar() {
  return FlatButton(
    color: Colors.redAccent,
    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    onPressed: () {},
    child: Text("Cancelar"),
  );
}
