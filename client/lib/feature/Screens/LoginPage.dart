import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/google_signin_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),

       builder: (context,snapshot){
        if (snapshot.connectionState==ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );}else{
        return   Column(
      children: [
        Center(
          child: FloatingActionButton.extended(onPressed: (){
         final provider=Provider.of<GoogleSignProvider>(context,listen: false);
        },

          icon: Image.asset("assets/img/google-logo.png")
       , label: Text("Sign in with Google"),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 71, 51, 51),

          ),
        )
      ],
        );
          }

       }

      ),
    );
  }
}