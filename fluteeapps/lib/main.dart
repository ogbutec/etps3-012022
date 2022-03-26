import 'package:fluteeapps/modelos/Pokemon.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(WebFlutter());
}

class WebFlutter extends StatefulWidget {
  @override
  State<WebFlutter> createState() => _WebFlutterState();
}

class _WebFlutterState extends State<WebFlutter> {
  Future<List<Pokemon>> _listadoPokemon;

  Future<List<Pokemon>> _getPokemon() async {
    final response = await http.get("https://pokeapi.co/api/v2/pokemon");
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Exception("Falla en conexion  estado 500");
    }
  }

  @override
  void initState() {
    super.initState();
    _getPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Consumo Webservice',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Webservice Flutter'),
        ),
        body: Center(
          child: Container(
            child: Text('Cuerpo de la aplicacion'),
          ),
        ),
      ),
    );
  }
}
