import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recepie_app/home.dart';
import 'package:recepie_app/registration.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () async {
      // Check if user is logged in
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // User logged in → go to home screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const home()),
        );
      } else {
        // User not logged in → go to registration screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const registration()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Responsive sizing
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.green.shade50,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Healicious',
                style: TextStyle(
                  fontSize: width * 0.11, // responsive font
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
              ),
              SizedBox(height: height * 0.02), // responsive spacing
              Text(
                'Healing Through Food',
                style: TextStyle(
                  fontSize: width * 0.035, // responsive font
                  color: Colors.green.shade600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
