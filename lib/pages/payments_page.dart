import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Payments"),
        backgroundColor: Colors.teal,
      ),
      
      body: Center(child: Text("Handle Payments Here")),
    );
  }
}
