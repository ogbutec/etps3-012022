import 'package:flutter/material.dart';

class EmailLoging extends StatefulWidget {
  EmailLoging({Key? key}) : super(key: key);

  @override
  State<EmailLoging> createState() => _EmailLogingState();
}

class _EmailLogingState extends State<EmailLoging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
      Text('Log in'),
    ]));
  }
}
