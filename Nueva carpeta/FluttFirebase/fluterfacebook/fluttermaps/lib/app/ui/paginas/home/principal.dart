import 'package:flutter/material.dart';
import 'package:fluttermaps/app/ui/paginas/home/principalcontroller.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class PrincipalPage extends State<PrincipalPage> {
  final _controller = PrincipalController();

  @override
  void initState() {
    _controller.addListener(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Principal'),
        ),
        body: Column(
          children: [
            SizedBox(
              width: 500,
              height: 500,
              child: GoogleMap(
                markers: _controller.markers,
                //  onMapCreated: _controller.onMapCreated,
                initialCameraPosition: _controller.initialCameraPosition,
                myLocationButtonEnabled: false,
                scrollGesturesEnabled: false,
                compassEnabled: true,
                //zoomGesturesEnabled: false,
                //zoomControlsEnabled: false,
                // mapType: MapType.hybrid,
                onTap: _controller.onTap,
                /*
                onLongPress: (position) {
                  print(position);
                },*/
              ),
            )

            //child:GoogleMap(initialCameraPosition: _initialCameraPosition),
          ],
        ));
  }
}
