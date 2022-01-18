import 'package:classy_ui_design/address/residential%20address.dart';
import 'package:classy_ui_design/order/body.dart';
import 'package:classy_ui_design/address/shipping%20address.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'address/payment.dart';
import 'map/location.dart';
import 'map/map2.dart';
import 'order/my order.dart';
import 'order/order accepted.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  WidgetInspectorService.instance.performReassemble();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MapPage()
    );
  }
}

