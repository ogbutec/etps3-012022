import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(FireBaseFlutter());
  });
}

class FireBaseFlutter extends StatelessWidget {
  const FireBaseFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppFlut(),
    );
  }
}

@override
void initState() {
  //super.initState();
  getUsuario();
}

void getUsuario() async {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection('usuarios');
  QuerySnapshot usuarios = await collectionReference.get();
  if (usuarios.docs.length != 0) {
    for (var docu in usuarios.docs) {
      print(docu.data());
    }
  }
}

class AppFlut extends StatefulWidget {
  AppFlut({Key? key}) : super(key: key);

  @override
  State<AppFlut> createState() => _AppFlutState();
}

class _AppFlutState extends State<AppFlut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
