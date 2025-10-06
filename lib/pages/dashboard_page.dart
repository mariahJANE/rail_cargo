import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        //Home page
        BottomNavigationBarItem(icon: Icon( Icons.home),
          label: 'Home',
        ),
        //Settings page
        BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'Profile'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.store),
        label: 'Services'
        ),

      ]),

      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        children: [
          DashboardCard("Cargo", Icons.inventory, '/cargo', context),
          DashboardCard("Tracking", Icons.map, '/tracking', context),
          DashboardCard("Storage", Icons.store, '/storage', context),
          DashboardCard("Payments", Icons.payment, '/payments', context),
          DashboardCard("Profile", Icons.person, '/profile', context),
        ],
      ),
    );
  }

  Widget DashboardCard(String title, IconData icon, String route, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        margin: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: Colors.blue),
              SizedBox(height: 10),
              Text(title, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
