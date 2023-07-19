import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Home"),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){}, child: Text("Logout"))
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            "Profile"
          ),
        ),
      ),
    );
  }
}