import 'package:flutter/material.dart';

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
          title: Text("Alert Dialog"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Mostrar Alerta"),
                onPressed: () {
                  _mostrarAlerta(context);

                  ///print("Se presiono el boton");
                }),
            SizedBox(
              height: 20,
            ),
            Text("Informativo")
          ],
        )));
  }
}

Future<void> _mostrarAlerta(BuildContext context) async {
  return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => _buildAlertDialog(context));
}

Widget _buildAlertDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Como estan????"),
    content: Text("Muy Bien con flutter"),
    actions: <Widget>[
      FlatButton(
        child: Text("Aceptar"),
        textColor: Colors.blueAccent,
        onPressed: () {
          Navigator.of(context).pop();
          print("Presiono Aceptar");
        },
      ),
      FlatButton(
        child: Text("Cancelar"),
        textColor: Colors.redAccent,
        onPressed: () {
          Navigator.of(context).pop();
          print("Presiono Cancelar");
        },
      ),
      TextButton(
        onPressed: () {
          print("Ok");
          Navigator.of(context).pop();
        },
        child: Text("NOK"),
      ),
    ],
  );
}
