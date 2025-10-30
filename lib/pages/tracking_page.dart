import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class TrackingPage extends StatefulWidget {
  @override
  State<TrackingPage> createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Live Tracking"),
        backgroundColor: Colors.teal,
      ),

      body: Center(child: Text("Tracking Map Will Appear Here")),
    );
  }
}
