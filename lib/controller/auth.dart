import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rail_cargo/controller/login_register.dart';
import 'package:rail_cargo/pages/dashboard_page.dart';



class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if (snapshot.hasData){
              return DashboardPage();
            }else{
               return LoginRegister();
            }
          }
      ),
    );
  }
}
