import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../constantes/const.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: mostrarAppBar(),
      ),
      body: bodyAppSpf(),
      //: mostrarAppBar(),
    );
  }

  Widget mostrarAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explorar",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Entypo.list),
          ],
        ),
      ),
    );
  }

  Widget bodyAppSpf() {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          //crossAxisAlignment: CrossAxisAlignment.start,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
                children: List.generate(song_type_1.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  children: [
                    Text(
                      song_type_1[index],
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              );
            })),
          ),
        )
      ],
    ));
  }
}
