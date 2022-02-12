import 'package:flutter/material.dart';
import 'package:flutterwidsep/paginas/pagina.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widgets"),
        ),
        body: RaisedButton(
          child: Text("Logearse"),
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Pagina()))
          },
        ));
  }
}
