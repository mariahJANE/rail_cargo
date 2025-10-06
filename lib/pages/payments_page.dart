import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payments"),
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
      ]),


      body: Center(child: Text("Handle Payments Here")),
    );
  }
}
