import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:baraction_footer/const/colors.dart';

class Principal extends StatefulWidget {
  Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int ActiveTab = 0; //13
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 1
      bottomNavigationBar: getFooter(), //2
    );
  }

  Widget getFooter() {
    //3
    List items = [
      FeatherIcons.home,
      FeatherIcons.book,
      FeatherIcons.search,
      FeatherIcons.settings,
    ];
    return Container(
      //4
      height: 50, //5
      decoration: BoxDecoration(color: Colors.black), //6
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20), //11
        child: Row(
          //7
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //10
          children: List.generate(
            //8
            items.length,
            (index) {
              return IconButton(
                  onPressed: () {
                    //12
                    setState(() {
                      ActiveTab = index;
                    });
                  },
                  icon: Icon(
                      //Icons.home
                      items[index],
                      color: ActiveTab == index ? primary : Colors.white)); //9
            },
          ),
        ),
      ),
    );
  }
}
