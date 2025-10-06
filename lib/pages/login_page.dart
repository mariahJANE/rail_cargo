import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // login function
  void signIn() async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);

    } on FirebaseAuthException catch (e){
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to Zambia RailTrack"),
      backgroundColor: Colors.teal,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),

        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon( Icons.lock,
                size: 100),
                SizedBox(height: 50),
            
                //username
            
                TextField(
                  controller: emailController,
            
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Email"),
                ),
                SizedBox ( height: 17),
                //password
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter Password"),
                  obscureText: true,
                ),
                SizedBox(height: 23),
                ElevatedButton(
            
                  onPressed: () {
                    signIn();
                  },
                  child: Text("Login"),
            
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue.shade500
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
