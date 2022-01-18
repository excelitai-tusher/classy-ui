// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geocode/geocode.dart';
// import 'package:geolocation/geolocation.dart';
//
// // void main() => runApp(MyApp());
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Google Maps Demo',
// //       home: MapSample(),
// //     );
// //   }
// // }
//
// class MapSample extends StatefulWidget {
//   @override
//   State<MapSample> createState() => MapSampleState();
// }
//
// class MapSampleState extends State<MapSample> {
//   Completer<GoogleMapController> _controller = Completer();
//
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target:  LatLng(23.748419032382532, 90.40278648441169),
//     zoom: 14.4746,
//   );
//
//   static final Marker _kGooglePlexMarker = Marker(markerId:
//   MarkerId('_kGooglePlex'),
//     infoWindow: InfoWindow(title: 'Google Plex'),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//     position: LatLng(23.748419032382532, 90.40278648441169),
//   );
//
//   static final CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(23.748419032382532, 90.40278648441169),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414,
//    );
//
//   static final Marker _kLakeMarker = Marker(
//     markerId: MarkerId('_kLakeMarker'),
//     infoWindow: InfoWindow(title: 'Lake'),
//     icon: BitmapDescriptor.defaultMarker,
//     position: LatLng(23.748419032382532, 90.40278648441169),
//   );
//
//   static final Polyline _kPolyline = Polyline(
//    polylineId: PolylineId('_kPolyline'),
//     points: [
//       LatLng(23.748419032382532, 90.40278648441169),
//       LatLng(23.748419032382532, 90.40278648441169),
//     ]
//   );
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: GoogleMap(
//         mapType: MapType.normal,
//         markers: {
//           _kGooglePlexMarker,
//           _kLakeMarker,
//         },
//         polylines: {
//           _kPolyline,
//         },
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: Text('To the lake'),
//         icon: Icon(Icons.directions_boat),
//       ),
//     );
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }