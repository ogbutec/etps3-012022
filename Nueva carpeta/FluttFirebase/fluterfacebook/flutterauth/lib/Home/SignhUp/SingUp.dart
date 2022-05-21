import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  Singup({Key? key}) : super(key: key);

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Singup'),
        ),
        body: ListView(children: [
          const SizedBox(height: 12),
          UserImage(onFileChaged: (urlImagen) {
            setState(() {
              this.urlImagen = urlImagen;
            });
          }),
        ]));
  }
}
