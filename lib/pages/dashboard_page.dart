import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey,
                ),
                child: Icon(Icons.person),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Active Shipments'),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('1234'),
                      Row(
                        children: [
                          Text('Lusaka'),
                          Icon(Icons.arrow_forward),
                          Text('Ndola'),
                        ],
                      ),
                      Text('In transit'),
                    ],
                  ),
                  TextButton(onPressed: () {}, child: Text('View Shipments')),
                ],
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            padding: EdgeInsets.all(20),
            children: [
              DashboardCard("Cargo", Icons.inventory, '/cargo', context),
              DashboardCard("Tracking", Icons.map, '/tracking', context),
              DashboardCard("Schedule", Icons.store, '/storage', context),
              DashboardCard("Payments", Icons.payment, '/payments', context),
            ],
          ),
        ],
      ),
    );
  }

  Widget DashboardCard(
    String title,
    IconData icon,
    String route,
    BuildContext context,
  ) {
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
