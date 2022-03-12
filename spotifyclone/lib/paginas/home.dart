import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../constantes/const.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int activoMenu1 = 0;
  int activoMenu2 = 0;
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu1 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_1[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu1 == index
                                  ? Colors.green
                                  : Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu1 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(songs.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(songs[index]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          songs[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            songs[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.start,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  children: List.generate(song_type_2.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activoMenu1 = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song_type_2[index],
                          style: TextStyle(
                              //color: Colors.grey,
                              fontSize: 15,
                              color: activoMenu2 == index
                                  ? Colors.green
                                  : Colors.grey,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        activoMenu2 == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            : Container()
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),

//segundo bloque

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(songs.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(songs[index]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          songs[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            songs[index]['descriptions'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
        ],
      ),
    );
  }
}
