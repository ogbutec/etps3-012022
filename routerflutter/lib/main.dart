import 'package:flutter/material.dart';
import 'package:routerflutter/paginas/configura.dart';
import 'package:routerflutter/paginas/paginaprincipal.dart';
import 'package:routerflutter/paginas/usuario.dart';

void main() {
  runApp(AppRoute());
}

class AppRoute extends StatefulWidget {
  const AppRoute({Key? key}) : super(key: key);

  @override
  State<AppRoute> createState() => _AppRouteState();
}

class _AppRouteState extends State<AppRoute> {
  int _paginaActual = 0;
  List<Widget> _paginas = [PaginaPrincipal(), Usuario(), Configura()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi aplicacion',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nombre de mi app"),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          currentIndex: _paginaActual,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Principal"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Usuarios"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Configuraciones")
          ],
        ),
      ),
    );
  }
}
