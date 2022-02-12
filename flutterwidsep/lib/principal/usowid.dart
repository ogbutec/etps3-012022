import 'package:flutter/material.dart';
import 'package:flutterwidsep/principal/campos.dart';

class UsoWid extends StatefulWidget {
  UsoWid({Key? key}) : super(key: key);

  @override
  State<UsoWid> createState() => _UsoWidState();
}

class _UsoWidState extends State<UsoWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widgets"),
        ),
        body: mensaje());
  }
}

Widget mensaje() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/pic-4.png"),
            //image: NetworkImage(
            //  "https://image.freepik.com/vector-gratis/fondo-movil-galaxia-tonos-verdes_79603-548.jpg?w=360"),
            fit: BoxFit.cover)),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        nombre(),
        camposUsuario(),
        SizedBox(
          height: 10,
        ),
        camposPass(),
        SizedBox(
          height: 15,
        ),
        botonAceptar(),
        SizedBox(
          height: 15,
        ),
        botonCancelar()
      ],
    ) //Text("ETPS3"),
        ),
  );
}
