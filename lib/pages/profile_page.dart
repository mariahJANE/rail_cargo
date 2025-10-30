import 'package:flutter/material.dart';
import 'package:rail_cargo/utils/profile_container.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),
      ),
      
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  border: Border.all(
                    width: 2,
                    color: Colors.blueAccent
                  )
                ),
                child: Icon(
                    Icons.person,
                  size: 70,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          ProfileContainer(),
          SizedBox(height: 10,),
          ProfileContainer(),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
