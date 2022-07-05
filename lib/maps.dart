import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 150,        
          child: Column(
            children: [
              Flexible(
                child: Stack(
                   alignment: AlignmentDirectional.center,
                  children: [
                    Card(
                      elevation: 5,
                      child: FlutterMap(
                      options: MapOptions(                      
                        center: LatLng(-26.7731843, -53.2030883),
                      ),
                      layers: [
                        TileLayerOptions(
                          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 2, 
                      right: MediaQuery.of(context).size.width * 0.65,
                      child: ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.near_me), label: const Text("Itinerários"))
                    ),
                  ]
                )
              )
            ],
          ),
        ),
      )
    );
  }
}