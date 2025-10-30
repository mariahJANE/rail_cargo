import 'package:flutter/material.dart';
import 'package:rail_cargo/pages/dashboard_page.dart';
import 'package:rail_cargo/pages/settings_page.dart';
import 'package:rail_cargo/pages/storage_page.dart';
import 'package:rail_cargo/pages/tracking_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    DashboardPage(),
    StoragePage(),
    TrackingPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: navigateBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Cargo',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Services'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
