import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignUpPage extends StatefulWidget {

  final Function()? onTap;
  const SignUpPage({super.key, required this.onTap});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  // sign up function
  signUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
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
                    signUp();
                  },
                  child: Text('Sign Up'),

                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already a member? '),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign in',
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
