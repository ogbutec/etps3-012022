import 'dart:convert';

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
  late Future<List<Pokemon>> _listadoPokemon;

  Future<List<Pokemon>> _getPokemon() async {
    final response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"));
    String cuerpo;
    List<Pokemon> lista = [];

    if (response.statusCode == 200) {
      print(response.body);
      cuerpo = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(cuerpo);
      for (var item in jsonData["pokemon"]) {
        lista.add(Pokemon(item["name"], item["img"]));
      }
    } else {
      throw Exception("Falla en conexion  estado 500");
    }
    return lista;
  }

  @override
  void initState() {
    super.initState();
    _listadoPokemon = _getPokemon();
  }

  @override
  Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder(
      future: _listadoPokemon,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: _listadoPokemons(snapshot.data),
          );
        } else {
          print(snapshot.error);
          return Text("Error");
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Consumo Webservice',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Poke API'),
          ),
          body: futureBuilder),
    );
  }

  List<Widget> _listadoPokemons(data) {
    List<Widget> poke = [];
    for (var itempk in data) {
      poke.add(Card(
        elevation: 2.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Text(itempk.num),
            Container(
              padding: EdgeInsets.all(2.0),
              height: 500,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(itempk.img), scale: 0.05),
              ),
            ),
            Text(itempk.name),
          ],
        ),
      ));
    }
    return poke;
  }
}
