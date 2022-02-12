import 'package:flutter/material.dart';

void main() {
  runApp(RCB_APP());
}

class RCB_APP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filas y Columnas',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Principal(title: 'Aplicacion2'),
    );
  }
}

class Principal extends StatefulWidget {
  Principal({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Valor1"),
            Text("Valor2"),
            Text("Valor3"),
            Text("Valor4")
          ]),
    );
  }
}
