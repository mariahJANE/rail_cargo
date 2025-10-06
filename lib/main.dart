import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rail_cargo/controller/auth.dart';
import 'pages/dashboard_page.dart';
import 'pages/cargo_page.dart';
import 'pages/tracking_page.dart';
import 'pages/storage_page.dart';
import 'pages/payments_page.dart';
import 'pages/profile_page.dart';
import 'pages/settings_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(RailCargoApp());
}

class RailCargoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rail Cargo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.teal),
      routes: {
        '/dashboard': (context) => DashboardPage(),
        '/cargo': (context) => CargoPage(),
        '/tracking': (context) => TrackingPage(),
        '/storage': (context) => StoragePage(),
        '/payments': (context) => PaymentsPage(),
        '/profile': (context) => ProfilePage(),
        '/settings': (context) => SettingsPage(),

      },
      home: AuthPage(),
    );
  }
}
