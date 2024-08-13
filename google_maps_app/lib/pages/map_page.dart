import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  // Alexandria, Egypt
  static const LatLng _alexandria = LatLng(31.2156, 29.9553);
  static const LatLng _mansoura = LatLng(31.0419, 31.3785);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _alexandria, zoom: 13),
        markers: {
          const Marker(
              markerId: MarkerId("_currentLocation"),
              icon: BitmapDescriptor.defaultMarker,
              position: _alexandria),
          const Marker(
              markerId: MarkerId("_sourceLocation"),
              icon: BitmapDescriptor.defaultMarker,
              position: _mansoura),
        },
      ),
    );
  }
}
