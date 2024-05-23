import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class map1 extends StatefulWidget {
  const map1({Key? key}) : super(key: key);

  @override
  _map1State createState() => _map1State();
}

class _map1State extends State<map1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa 1',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(41.3851, 2.1734), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=34760bc027494f3aaae6fd071b7ac862',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(41.3851, 2.1734), //San Francisco, CA
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.blue),
                    ),
                  ),



                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}