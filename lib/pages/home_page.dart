import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logout() async{
    await FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.exit_to_app))],
        backgroundColor: Colors.teal,
      ),
        body: Center(child: Text("services"))
    );
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

    ]);
  }
}